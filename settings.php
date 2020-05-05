<!-- ############ Content START-->
<div id="content" class="flex ">
    <!-- ############ Main START-->
    <div>
        <div class="page-hero page-container " id="page-hero">
            <div class="padding d-flex">
                <div class="page-title">
                    <h2 class="text-md text-highlight">Setting</h2>
                    <small class="text-muted">Configure the things</small>
                </div>
                <div class="flex"></div>
                <!--<div>
                    <a href="https://themeforest.net/item/basik-responsive-bootstrap-web-admin-template/23365964" class="btn btn-md text-muted">
                            <span class="d-none d-sm-inline mx-1">Buy this Item</span>
                            <i data-feather="arrow-right"></i>
                    </a>
                    </div>-->
            </div>
        </div>
        <div class="page-content page-container" id="page-content">
            <div class="padding">
                <div id="accordion">
                    <p class="text-muted">
                        <strong>Main Settings</strong>
                    </p>
                    <div class="card">
                        <div class="d-flex align-items-center px-4 py-3 pointer" data-toggle="collapse" data-parent="#accordion" data-target="#c_1">
                            <div>
                                <span class="w-48 avatar circle bg-info-lt" data-toggle-class="loading">
                                <img src="assets/img/a9.jpg" alt=".">
                                </span>
                            </div>
                            <div class="mx-3 d-none d-md-block">
                                <strong>Business Name</strong>
                                <div class="text-sm text-muted">Slogan</div>
                            </div>
                            <div class="flex"></div>
                            <div class="mx-3">
                                <i data-feather="chevron-right"></i>
                            </div>
                            <div>
                                <a href="#" class="text-prmary text-sm">Sign Out</a>
                            </div>
                        </div>
                        <div class="collapse p-4" id="c_1">
                            <form role="form">
                                <div class="form-group">
                                    <label>Business Logo .PNG</label>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="customFile" name="business_logo">
                                        <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Business Favicon .PNG</label>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="customFile" name="business_favicon">
                                        <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Business Name</label>
                                    <input type="text" class="form-control" name="business_name">
                                </div>
                                <div class="form-group">
                                    <label>Business Slogan</label>
                                    <input type="text" class="form-control" name="business_slogan">
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Update</button>
                            </form>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t pointer" data-toggle="collapse" data-parent="#accordion" data-target="#c_4">
                            <i data-feather="map-pin"></i>
                            <div class="px-3">
                                <div>Business Information</div>
                            </div>
                            <div class="flex"></div>
                            <div>
                                <i data-feather="chevron-right"></i>
                            </div>
                        </div>
                        <div class="collapse p-4" id="c_4">
                            <form role="form">
                                <div class="form-group">
                                    <label>Business Phone Numbers</label>
                                    <input type="number" class="form-control" placeholder="Phone 1" name="business_phone1">
                                    <input type="number" class="form-control" placeholder="Phone 2" name="business_phone2">
                                    <input type="number" class="form-control" placeholder="Phone 3" name="business_phone3">
                                </div>
                                <div class="form-group">
                                    <label>Business Email</label>
                                    <input type="text" class="form-control" placeholder="Email Address" name="business_email">
                                </div>
                                <div class="form-group">
                                    <label>Business Address</label>
                                    <input type="text" class="form-control" placeholder="Business location" name="business_address">
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Update</button>
                            </form>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t">
                            <i data-feather="refresh-cw"></i>
                            <div class="px-3">
                                <div>Site Offline</div>
                                <div class="text-sm text-muted">Enable only if site offline</div>
                            </div>
                            <div class="flex"></div>
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t pointer" data-toggle="collapse" data-parent="#accordion" data-target="#c_2">
                            <i data-feather="lock"></i>
                            <div class="px-3">
                                <div>License Access Keys</div>
                            </div>
                            <div class="flex"></div>
                            <div>
                                <i data-feather="chevron-right"></i>
                            </div>
                        </div>
                        <div class="collapse p-4" id="c_2">
                            <form role="form">
                                <div class="form-group">
                                    <label>OTA Access Key</label>
                                    <input type="text" class="form-control" value="FD633243443MF">
                                </div>
                                <div class="form-group">
                                    <label>OTA Secret Key</label>
                                    <input type="text" class="form-control" value="234MFD63324F">
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Update</button>
                            </form>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t pointer" data-toggle="collapse" data-parent="#accordion" data-target="#c_3">
                            <i data-feather="credit-card"></i>
                            <div class="px-3">
                                <div>Payment methods</div>
                            </div>
                            <div class="flex"></div>
                            <div>
                                <i data-feather="chevron-right"></i>
                            </div>
                        </div>
                        <div class="collapse p-4" id="c_3">
                            <form role="form">
                                <div class="form-group">
                                    <label>Paypal account</label>
                                    <input type="input" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Update</button>
                            </form>
                        </div>
                    </div>
                    <p class="text-muted">
                        <strong>Notifications</strong>
                    </p>
                    <div class="card">
                        <div class="d-flex align-items-center px-4 py-3">
                            <div>New account signup</div>
                            <div class="flex"></div>

                            Push Notification&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Email&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Whatsapp&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            SMS&nbsp;&nbsp;
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>
                        </div>

                        <div class="d-flex align-items-center px-4 py-3">
                            <div>New Booking Generated</div>
                            <div class="flex"></div>

                            Push Notification&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Email&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Whatsapp&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            SMS&nbsp;&nbsp;
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>
                        </div>

                        <div class="d-flex align-items-center px-4 py-3">
                            <div>Booking Cancelled</div>
                            <div class="flex"></div>

                            Push Notification&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Email&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            Whatsapp&nbsp;&nbsp;
                            <span style="margin-right:15px">
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>

                            SMS&nbsp;&nbsp;
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>
                        </div>

                    </div>
                    <p class="text-muted">
                        <strong>Email Configuration</strong>
                    </p>
                    <div class="card">
                        <div class="d-flex align-items-center px-4 py-3">
                            <div>Anyone posts a comment on my post</div>
                            <div class="flex"></div>
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox">
                            <i></i>
                            </label>
                            </span>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t">
                            <div>Anyone follow me</div>
                            <div class="flex"></div>
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox" checked>
                            <i></i>
                            </label>
                            </span>
                        </div>
                        <div class="d-flex align-items-center px-4 py-3 b-t">
                            <div>Anyone repost</div>
                            <div class="flex"></div>
                            <span>
                            <label class="ui-switch ui-switch-md">
                            <input type="checkbox">
                            <i></i>
                            </label>
                            </span>
                        </div>
                    </div>
                    <p class="text-muted">
                        <strong>Security</strong>
                    </p>
                    <div class="card">
                        <div class="d-flex align-items-center px-4 py-3 b-t pointer" data-toggle="collapse" data-parent="#accordion" data-target="#c_5">
                            <div>Delete account?</div>
                            <div class="flex"></div>
                            <div>
                                <i data-feather="chevron-right"></i>
                            </div>
                        </div>
                        <div class="collapse p-4" id="c_5">
                            <div class="py-3">
                                <p>Are you sure to delete your account?</p>
                                <button type="button" class="btn btn-white">No</button>
                                <button type="button" class="btn btn-danger">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ############ Main END-->
</div>
<!-- ############ Content END-->