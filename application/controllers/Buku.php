<?php

require APPPATH . '/libraries/REST_Controller.php';
Class Buku Extends REST_Controller{
    
    function __construct($config = 'rest') {
        parent::__construct($config);
    }
    
    // untuk menampilkan data
    function index_get(){
        $data = $this->db->get('books')->result();
        return $this->response($data,200);
    }

    function index_post(){

        $isbn           = $this->post('isbn');
        $title          = $this->post('title');
        $writer         = $this->post('writer');
        $description    = $this->post('description');

        $image_name = date('Ymd_His').'.jpg';

        $image_encoded = $this->post('image');
        $image_decoded = base64_decode($image_encoded);

        //path image will be stored
        $path = './upload/'.$image_name;

        //write the file
        $file = fopen($path, 'w');

        //Write the file to the folder
        $is_written = fwrite($file, $image_decoded);

        //Close the file
        fclose($file);

        IF($is_written > 0){
            $book = array (
                'title'         =>  $title,
                'isbn'          =>  $isbn,
                'writer'        =>  $writer,
                'description'   =>  $description,
                'image'         =>  $image_name
            );
    
            $insert = $this->db->insert('books',$book);
    
            IF ($insert){
                $data = array ('status'=>'sukses insert');
                
                header('Content-type: application/json');
                $this->response($data,200);
            }
            ELSE{
                $data = array ('status'=>'gagal insert');
    
                $this->response($data,502);
            }       
        }ELSE{
            $data = array ('status'=>'gagal upload');
    
            $this->response($data,502);
        }

        
    }
    

    // untuk mengirim data
    function index_post_backup(){
        $isbn           = $this->post('isbn');
        $title          = $this->post('title');
        $writer         = $this->post('writer');
        $description    = $this->post('description');
        
        $book = array (
                    'title'         =>  $title,
                    'isbn'          =>  $isbn,
                    'writer'        =>  $writer,
                    'description'   =>  $description);

        $insert = $this->db->insert('books',$book);
        
        if($insert){
            $this->response($book,200);
        }else{
            $data = array ('status'=>'gagal insert');
            $this->response($data,502);
        }
    }

    
    
    function index_put(){
        // parameter yang dikirimkan oleh client
        $isbn           = $this->put('isbn');
        $title          = $this->put('title');
        $writer         = $this->put('writer');
        $description    = $this->put('description');
        // menyimpan data dalam bentuk array
        $book           = array(
                            'title'         =>  $title,
                            'writer'        =>  $writer,
                            'description'   =>  $description);
        // update berdasarkan sibn sebagai parameter
        $this->db->where('isbn',$isbn);
        $update = $this->db->update('books',$book); 
        // chek apakah update nya berhasil atau gagal
        if($update){
            $this->response($book,200);
        }else{
            $data = array ('status'=>'gagal insert');
            $this->response($data,502);
        }
    }
    
    function index_delete(){
        $isbn= $this->delete('isbn');
        $book = $this->db->get_where('books',array('isbn'=>$isbn));
        if($book->num_rows()>0){
            // delete data
            $this->db->where('isbn',$isbn);
            $this->db->delete('books');
            $data = array('status'=>'Berhasil Delete Buku Dengan ISBN : '.$isbn);
            $this->response($data,200);
        }else{
            $data = $data = array('status'=>'Buku dengan ISBN: '.$isbn.' Tidak Ditemukan');
            $this->response($data,200);
        }
    }
}
?>
