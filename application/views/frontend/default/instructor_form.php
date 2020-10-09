<section class="category-header-area">
    <div class="container-lg">
        <div class="row">
            <div class="col">
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo site_url('home'); ?>"><i class="fas fa-home"></i></a></li>
                        <li class="breadcrumb-item">
                            <a href="#">
                                <?php echo $page_title; ?>
                            </a>
                        </li>
                    </ol>
                </nav>
                <h1 class="category-name">
                    <?php echo get_phrase('register_yourself'); ?>
                </h1>
            </div>
        </div>
    </div>
</section>


<section class="category-course-list-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-9">
              <div class="user-dashboard-box mt-3">
                  <div class="user-dashboard-content w-100 register-form">
                      <div class="content-title-box">
                          <div class="title"><?php echo get_phrase('registration_form'); ?></div>
                          <div class="subtitle">Be a techer in telmeez.</div>
                      </div>
                      <form action="<?php echo site_url('login/register_instractor'); ?>" method="post">
                          <div class="content-box">
                              <div class="basic-group">



                                <div class="form-group">
                                  <div class="d-flex justify-content-between">
                                    <label>Example select</label>
                                    <i class="fas fa-star-of-life text-danger align-self-center" style="font-size: .55em;"></i>
                                  </div>
                                  <select class="form-control py-0" name="specialized_fields" required>
                                    <option value="" disabled selected>selkect</option>
                                    <?php
                                      $categories = $this->crud_model->get_categories()->result_array();
                                      // echo "<pre>";
                                      // var_dump($categories);
                                      foreach ($categories as $key => $category):
                                    ?>
                                    <option value="<?php echo $category['id']; ?>"><i class="icon <?php echo $category['font_awesome_class']; ?>"></i> <?php echo $category['name']; ?></option>
                                    <?php endforeach; ?>
                                  </select>
                                </div>


                                <div class="form-group">
                                  <div class="d-flex justify-content-between">
                                    <label for=""><?php echo get_phrase('teach_experience'); ?></label>
                                    <i class="fas fa-star-of-life text-danger align-self-center" style="font-size: .55em;"></i>
                                  </div>
                                  <div class="form-check">
                                    <input class="form-check-input" type="radio" name="teach_experience" id="teachRadios2" value="0" required>
                                    <label class="form-check-label" for="teachRadios2">
                                      No
                                    </label>
                                  </div>
                                  <div class="form-check">
                                    <input class="form-check-input" type="radio" name="teach_experience" id="teachRadios1" value="1">
                                    <label class="form-check-label" for="teachRadios1">
                                      Yes
                                    </label>
                                  </div>
                                </div>

                                  <div class="form-group">
                                      <label for="expertise"><span class="input-field-icon"></span> Write about your expertise:</label>
                                      <textarea class="form-control" name="expertise" id="expertise" rows="8" cols="80" value="" placeholder="your expertise"></textarea>
                                  </div>

                              </div>
                          </div>
                          <div class="content-update-box">
                              <button type="submit" class="btn"><?php echo get_phrase('sign_up'); ?></button>
                          </div>
                          <div class="account-have text-center">
                              <?php echo get_phrase('already_have_an_account'); ?>? <a href="javascript::" onclick="toggoleForm('login')"><?php echo get_phrase('login'); ?></a>
                          </div>
                      </form>
                  </div>
              </div>
            </div>
        </div>
    </div>
</section>
