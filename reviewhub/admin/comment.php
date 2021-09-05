<?php include "header.php"; ?>
<!-- add comment on posts -->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-comments"></i> <?php echo $comments_add_comment; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $config['site_url']; ?>/admin/comment.php" method="post" role="form">
                    <div class="form-group">
                        <label for="comment_post_id"><?php echo $lang_admin_comments_post_id; ?></label>
                        <input type="text" class="form-control" name="comment_post_id" id="comment_post_id"
                            placeholder="<?php echo $comments_post_id; ?>">
                    </div>
                    <div class="form-group">
                        <label for="comment_author"><?php echo $lang_admin_comments_author; ?></label>
                        <input type="text" class="form-control" name="comment_author" id="comment_author"
                            placeholder="<?php echo $comments_author; ?>">
                    </div>
                    <div class="form-group">
                        <label for="comment_email"><?php echo $lang_admin_comments_email; ?></label>
                        <input type="text" class="form-control" name="comment_email" id="comment_email"
                            placeholder="<?php echo $comments_email; ?>">
                    </div>
                    <div class="form-group">
                        <label for="comment_content"><?php echo $lang_admin_comments_content; ?></label>
                        <textarea class="form-control" name="comment_content" id="comment_content" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="comment_status"><?php echo $lang_admin_comments_status; ?></label>
                        <select class="form-control" name="comment_status" id="comment_status">
                            <option value="approved"><?php echo $lang_admin_comments_approved; ?></option>
                            <option value="pending"><?php echo $lang_admin_comments_pending; ?></option>
                        </select>
                    </div>
                    <button type="submit"
                        class="btn btn-primary"><?php echo $lang_admin_comments_add_comment; ?></button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /add comment on posts -->
<?php include "footer.php"; ?>