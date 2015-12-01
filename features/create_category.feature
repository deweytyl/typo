Feature: Create Category
  As an author
  I want to organize my posts
  I want my posts to be in categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully get to categories page
      Given I am on the admin content page
      When I follow "Categories"
      Then I should be on the new category page

  Scenario: Successfully create Category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Foobar" 
    And I should see "Lorem Ipsum"