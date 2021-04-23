package com.formation.webBooks.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
	private String description;
	private String language;
	
	@Column(name="page_count")
	private Long pageCount;
	
	@Column(name="published_date")
	private String publishedDate;
	
	@Column(name="self_link")
	private String selfLink;
	
	@Column(name="small_thumbnail")
	private String smallThumbnail;
	
	private String thumbnail;
	private String title;
	
	 @ElementCollection
	 @CollectionTable(name = "book_model_authors",
	 joinColumns = @JoinColumn(name = "book_model_id"))
	 @Column(name = "authors")
	 private List<String> authors = new ArrayList<>();
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="volume_info_id")
	private List<IndustryEntity> industryEntity;

}
