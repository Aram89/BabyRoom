package org.proffart.kindernet.domain;

import javax.persistence.*;

/**
 * @author Aram Kirakosyan.
 *
 * Model for file representation.
 */
@Entity
@Table(name = "file")
@PrimaryKeyJoinColumn(name = "fileId")
public class File extends Action{

    private String name;
    private String path;
    private String mimeType;
    private String fileType;
    private String externalURl;
    private String postId;;

    @Column(name = "postId")
    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    public void setExternalURl(String externalURl) {
        this.externalURl = externalURl;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "path")
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Column(name = "mimeType")
    public String getMimeType() {
        return mimeType;
    }

    public void setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }

    @Column(name = "type")
    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    @Column(name = "externalURl")
    public String getExternalURl() {
        return externalURl;
    }
}
