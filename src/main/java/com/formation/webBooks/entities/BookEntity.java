package com.formation.webBooks.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="book")
public class BookEntity {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private String id;
	private Boolean allowAnonLogging;
	private String canonicalVolumeLink;
	private String contentVersion;
	private String etag;
	private String infoLink;
	private String kind;
	private String language;
	private String maturityRating;
	private Long pageCount;
	private String previewLink;
	private String printType;
	private String publishedDate;
	private String selfLink;
	private String smallThumbnail;
	private String thumbnail;
	private String title;

}
