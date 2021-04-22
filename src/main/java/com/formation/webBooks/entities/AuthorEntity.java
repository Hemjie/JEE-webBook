package com.formation.webBooks.entities;

import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="book_model_author")
public class AuthorEntity {
	
	@OneToOne
	private String bookModelId;
	private String authors;
}
