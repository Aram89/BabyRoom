package org.proffart.babyroom.domain;

import org.proffart.babyroom.domain.users.Child;

import javax.persistence.*;
import java.util.List;

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
    private String systemName;
    private String path;
    private String mimeType;
    private String type;
    private String externalURl;

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

    @Column(name = "systemName")
    public String getSystemName() {
        return systemName;
    }

    public void setSystemName(String systemName) {
        this.systemName = systemName;
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
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "externalURl")
    public String getExternalURl() {
        return externalURl;
    }
}
