package com.formation.webBooks.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
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
	private String id;
	
	@Column(name="allow_anon_logging")
	private Boolean allowAnonLogging;
	
	@Column(name="canonical_volume_link")
	private String canonicalVolumeLink;
	
	@Column(name="content_version")
	private String contentVersion;
	
	private String etag;
	
	@Column(name="info_link")
	private String infoLink;
	private String kind;
	private String language;
	
	@Column(name="maturity_rating")
	private String maturityRating;
	
	@Column(name="page_count")
	private Long pageCount;
	
	@Column(name="preview_link")
	private String previewLink;
	
	@Column(name="print_type")
	private String printType;
	
	@Column(name="published_date")
	private String publishedDate;
	
	@Column(name="self_link")
	private String selfLink;
	
	@Column(name="small_thumbnail")
	private String smallThumbnail;
	
	private String thumbnail;
	private String title;
	
	@ElementCollection
	private List<String> authors;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="volume_info_id")
	private List<IndustryEntity> industryEntity;

}
