.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Glide$onPostMessage;
    }
.end annotation


# static fields
.field private static volatile onRelationshipValidationResult:Z

.field private static volatile onTransact:Lcom/bumptech/glide/Glide;


# instance fields
.field public final ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

.field public final ICustomTabsCallback$Stub:Lo/setBaselineAlignedChildIndex;

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppCompatImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/DecorToolbar;

.field public final extraCallback:Lo/dispatchFitSystemWindows;

.field public final onMessageChannelReady:Lo/ButtonBarLayout;

.field public final onNavigationEvent:Lcom/bumptech/glide/Registry;

.field public final onPostMessage:Lo/setWeightSum;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/setLineHeight;Lo/DecorToolbar;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;Lo/setWeightSum;Lo/setBaselineAlignedChildIndex;ILcom/bumptech/glide/Glide$onPostMessage;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setLineHeight;",
            "Lo/DecorToolbar;",
            "Lo/dispatchFitSystemWindows;",
            "Lo/ButtonBarLayout;",
            "Lo/setWeightSum;",
            "Lo/setBaselineAlignedChildIndex;",
            "I",
            "Lcom/bumptech/glide/Glide$onPostMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/access$000<",
            "**>;>;",
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    .line 365
    const-class v4, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    .line 127
    sget-object v5, Lo/tintDrawable;->ICustomTabsCallback:Lo/tintDrawable;

    .line 367
    iput-object v1, v0, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 368
    iput-object v3, v0, Lcom/bumptech/glide/Glide;->onMessageChannelReady:Lo/ButtonBarLayout;

    move-object/from16 v5, p3

    .line 369
    iput-object v5, v0, Lcom/bumptech/glide/Glide;->asInterface:Lo/DecorToolbar;

    move-object/from16 v5, p6

    .line 370
    iput-object v5, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    move-object/from16 v5, p7

    .line 371
    iput-object v5, v0, Lcom/bumptech/glide/Glide;->ICustomTabsCallback$Stub:Lo/setBaselineAlignedChildIndex;

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 376
    new-instance v6, Lcom/bumptech/glide/Registry;

    invoke-direct {v6}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v6, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 377
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    .line 7371
    iget-object v6, v6, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    invoke-virtual {v6, v7}, Lo/setContentWidth;->onMessageChannelReady(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 380
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-lt v6, v7, :cond_0

    .line 381
    iget-object v6, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    new-instance v7, Lo/clearPressedItem;

    invoke-direct {v7}, Lo/clearPressedItem;-><init>()V

    .line 8371
    iget-object v6, v6, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    invoke-virtual {v6, v7}, Lo/setContentWidth;->onMessageChannelReady(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 384
    :cond_0
    iget-object v6, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 8590
    iget-object v6, v6, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    invoke-virtual {v6}, Lo/setContentWidth;->onMessageChannelReady()Ljava/util/List;

    move-result-object v6

    .line 8591
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 386
    new-instance v7, Lo/clearCallbacks;

    invoke-direct {v7, v2, v6, v1, v3}, Lo/clearCallbacks;-><init>(Landroid/content/Context;Ljava/util/List;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;)V

    .line 389
    invoke-static/range {p4 .. p4}, Lo/onTouch;->onNavigationEvent(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;

    move-result-object v8

    .line 392
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v10, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 9590
    iget-object v10, v10, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    invoke-virtual {v10}, Lo/setContentWidth;->onMessageChannelReady()Ljava/util/List;

    move-result-object v10

    .line 9591
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 394
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-direct {v9, v10, v11, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;)V

    .line 402
    new-instance v10, Lo/updateSelectorStateCompat;

    invoke-direct {v10, v9}, Lo/updateSelectorStateCompat;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 403
    new-instance v11, Lo/onFitSystemWindows;

    invoke-direct {v11, v9, v3}, Lo/onFitSystemWindows;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lo/ButtonBarLayout;)V

    .line 406
    new-instance v12, Lo/onForwardingStopped;

    invoke-direct {v12, v2}, Lo/onForwardingStopped;-><init>(Landroid/content/Context;)V

    .line 407
    new-instance v13, Lo/restoreHierarchyState$extraCallback;

    invoke-direct {v13, v5}, Lo/restoreHierarchyState$extraCallback;-><init>(Landroid/content/res/Resources;)V

    .line 409
    new-instance v14, Lo/restoreHierarchyState$onNavigationEvent;

    invoke-direct {v14, v5}, Lo/restoreHierarchyState$onNavigationEvent;-><init>(Landroid/content/res/Resources;)V

    .line 410
    new-instance v15, Lo/restoreHierarchyState$onMessageChannelReady;

    invoke-direct {v15, v5}, Lo/restoreHierarchyState$onMessageChannelReady;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p12, v4

    .line 412
    new-instance v4, Lo/restoreHierarchyState$onPostMessage;

    invoke-direct {v4, v5}, Lo/restoreHierarchyState$onPostMessage;-><init>(Landroid/content/res/Resources;)V

    .line 414
    new-instance v2, Lo/setSelector;

    invoke-direct {v2, v3}, Lo/setSelector;-><init>(Lo/ButtonBarLayout;)V

    move-object/from16 p3, v4

    .line 416
    new-instance v4, Lo/setDividerDrawable;

    invoke-direct {v4}, Lo/setDividerDrawable;-><init>()V

    move-object/from16 p6, v4

    .line 417
    new-instance v4, Lo/setBaselineAligned;

    invoke-direct {v4}, Lo/setBaselineAligned;-><init>()V

    move-object/from16 p7, v4

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 p13, v4

    .line 421
    iget-object v4, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    move-object/from16 v16, v14

    const-class v14, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v15

    new-instance v15, Lo/hasEmbeddedTabs;

    invoke-direct {v15}, Lo/hasEmbeddedTabs;-><init>()V

    move-object/from16 v18, v13

    .line 10109
    iget-object v13, v4, Lcom/bumptech/glide/Registry;->onNavigationEvent:Lo/measureVertical;

    invoke-virtual {v13, v14, v15}, Lo/measureVertical;->onPostMessage(Ljava/lang/Class;Lo/getSupportImageTintList;)V

    .line 422
    const-class v13, Ljava/io/InputStream;

    new-instance v14, Lo/getHeight;

    invoke-direct {v14, v3}, Lo/getHeight;-><init>(Lo/ButtonBarLayout;)V

    .line 11109
    iget-object v15, v4, Lcom/bumptech/glide/Registry;->onNavigationEvent:Lo/measureVertical;

    invoke-virtual {v15, v13, v14}, Lo/measureVertical;->onPostMessage(Ljava/lang/Class;Lo/getSupportImageTintList;)V

    .line 423
    const-class v13, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/Bitmap;

    .line 11183
    iget-object v15, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    move-object/from16 v19, v12

    const-string v12, "Bitmap"

    invoke-virtual {v15, v12, v10, v13, v14}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 425
    const-class v13, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/Bitmap;

    .line 12183
    iget-object v4, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v4, v12, v11, v13, v14}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13022
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v4, v15, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 429
    iget-object v4, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v13, Landroid/os/ParcelFileDescriptor;

    const-class v14, Landroid/graphics/Bitmap;

    new-instance v15, Lo/touchModeDrawsInPressedStateCompat;

    invoke-direct {v15, v9}, Lo/touchModeDrawsInPressedStateCompat;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 13183
    iget-object v4, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v4, v12, v15, v13, v14}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 436
    :cond_2
    iget-object v4, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v13, Landroid/graphics/Bitmap;

    .line 14183
    iget-object v14, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v14, v12, v8, v9, v13}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 437
    const-class v9, Landroid/content/res/AssetFileDescriptor;

    const-class v13, Landroid/graphics/Bitmap;

    .line 446
    invoke-static/range {p4 .. p4}, Lo/onTouch;->onMessageChannelReady(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;

    move-result-object v14

    .line 15183
    iget-object v15, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v15, v12, v14, v9, v13}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 442
    const-class v9, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    .line 447
    invoke-static {}, Lo/DialogTitle$onPostMessage;->extraCallback()Lo/DialogTitle$onPostMessage;

    move-result-object v14

    .line 15400
    iget-object v15, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v15, v9, v13, v14}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 447
    const-class v9, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    new-instance v14, Lo/getPopup;

    invoke-direct {v14}, Lo/getPopup;-><init>()V

    .line 16183
    iget-object v15, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v15, v12, v14, v9, v13}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 448
    const-class v9, Landroid/graphics/Bitmap;

    .line 16313
    iget-object v13, v4, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    invoke-virtual {v13, v9, v2}, Lo/layoutHorizontal;->onMessageChannelReady(Ljava/lang/Class;Lo/shouldApplyFrameworkTintUsingColorFilter;)V

    .line 449
    const-class v9, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lo/setSelectorEnabled;

    invoke-direct {v14, v5, v10}, Lo/setSelectorEnabled;-><init>(Landroid/content/res/Resources;Lo/applySupportImageTint;)V

    .line 17183
    iget-object v10, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    const-string v15, "BitmapDrawable"

    invoke-virtual {v10, v15, v14, v9, v13}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 451
    const-class v9, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lo/setSelectorEnabled;

    invoke-direct {v13, v5, v11}, Lo/setSelectorEnabled;-><init>(Landroid/content/res/Resources;Lo/applySupportImageTint;)V

    .line 18183
    iget-object v11, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v11, v15, v13, v9, v10}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 456
    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Lo/setSelectorEnabled;

    invoke-direct {v11, v5, v8}, Lo/setSelectorEnabled;-><init>(Landroid/content/res/Resources;Lo/applySupportImageTint;)V

    .line 19183
    iget-object v8, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v8, v15, v11, v9, v10}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 461
    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lo/measureHeightOfChildrenCompat;

    invoke-direct {v9, v1, v2}, Lo/measureHeightOfChildrenCompat;-><init>(Lo/dispatchFitSystemWindows;Lo/shouldApplyFrameworkTintUsingColorFilter;)V

    .line 19313
    iget-object v2, v4, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    invoke-virtual {v2, v8, v9}, Lo/layoutHorizontal;->onMessageChannelReady(Ljava/lang/Class;Lo/shouldApplyFrameworkTintUsingColorFilter;)V

    .line 466
    const-class v2, Ljava/io/InputStream;

    const-class v8, Lo/toGlobalMotionEvent;

    new-instance v9, Lo/getDividerWidth;

    invoke-direct {v9, v6, v7, v3}, Lo/getDividerWidth;-><init>(Ljava/util/List;Lo/applySupportImageTint;Lo/ButtonBarLayout;)V

    .line 20183
    iget-object v6, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    const-string v10, "Gif"

    invoke-virtual {v6, v10, v9, v2, v8}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 468
    const-class v2, Ljava/nio/ByteBuffer;

    const-class v6, Lo/toGlobalMotionEvent;

    .line 21183
    iget-object v8, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v8, v10, v7, v2, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 473
    const-class v2, Lo/toGlobalMotionEvent;

    new-instance v6, Lo/LinearLayoutCompat;

    invoke-direct {v6}, Lo/LinearLayoutCompat;-><init>()V

    .line 21313
    iget-object v7, v4, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    invoke-virtual {v7, v2, v6}, Lo/layoutHorizontal;->onMessageChannelReady(Ljava/lang/Class;Lo/shouldApplyFrameworkTintUsingColorFilter;)V

    .line 474
    const-class v2, Lo/setSupportImageTintList;

    const-class v6, Lo/setSupportImageTintList;

    .line 478
    invoke-static {}, Lo/DialogTitle$onPostMessage;->extraCallback()Lo/DialogTitle$onPostMessage;

    move-result-object v7

    .line 21400
    iget-object v8, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v8, v2, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 477
    const-class v2, Lo/setSupportImageTintList;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lo/getDividerPadding;

    invoke-direct {v7, v1}, Lo/getDividerPadding;-><init>(Lo/dispatchFitSystemWindows;)V

    .line 22183
    iget-object v8, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v8, v12, v7, v2, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 479
    const-class v2, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 23183
    iget-object v7, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    const-string v8, "legacy_append"

    move-object/from16 v9, v19

    invoke-virtual {v7, v8, v9, v2, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 485
    const-class v2, Landroid/net/Uri;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lo/setOnFitSystemWindowsListener;

    invoke-direct {v7, v9, v1}, Lo/setOnFitSystemWindowsListener;-><init>(Lo/onForwardingStopped;Lo/dispatchFitSystemWindows;)V

    .line 24183
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v9, v8, v7, v2, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 486
    new-instance v2, Lo/ForwardingListener$ICustomTabsCallback;

    invoke-direct {v2}, Lo/ForwardingListener$ICustomTabsCallback;-><init>()V

    .line 24342
    iget-object v6, v4, Lcom/bumptech/glide/Registry;->ICustomTabsCallback:Lo/setPopupBackgroundResource;

    invoke-virtual {v6, v2}, Lo/setPopupBackgroundResource;->onNavigationEvent(Lo/setPopupBackgroundDrawable$ICustomTabsCallback;)V

    .line 489
    const-class v2, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lo/setHomeButtonEnabled$onMessageChannelReady;

    invoke-direct {v7}, Lo/setHomeButtonEnabled$onMessageChannelReady;-><init>()V

    .line 24400
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v2, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 490
    const-class v2, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/isTitleTruncated$onMessageChannelReady;

    invoke-direct {v7}, Lo/isTitleTruncated$onMessageChannelReady;-><init>()V

    .line 25400
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v2, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 491
    const-class v2, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lo/onLongPress;

    invoke-direct {v7}, Lo/onLongPress;-><init>()V

    .line 26183
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v9, v8, v7, v2, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 492
    const-class v2, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lo/isTitleTruncated$onPostMessage;

    invoke-direct {v7}, Lo/isTitleTruncated$onPostMessage;-><init>()V

    .line 26400
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v2, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 493
    const-class v2, Ljava/io/File;

    const-class v6, Ljava/io/File;

    .line 495
    invoke-static {}, Lo/DialogTitle$onPostMessage;->extraCallback()Lo/DialogTitle$onPostMessage;

    move-result-object v7

    .line 27400
    iget-object v9, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v2, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 495
    new-instance v2, Lo/getDropDownHorizontalOffset$extraCallback;

    invoke-direct {v2, v3}, Lo/getDropDownHorizontalOffset$extraCallback;-><init>(Lo/ButtonBarLayout;)V

    .line 28342
    iget-object v4, v4, Lcom/bumptech/glide/Registry;->ICustomTabsCallback:Lo/setPopupBackgroundResource;

    invoke-virtual {v4, v2}, Lo/setPopupBackgroundResource;->onNavigationEvent(Lo/setPopupBackgroundDrawable$ICustomTabsCallback;)V

    .line 29022
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_4

    .line 500
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    new-instance v4, Lo/getDropDownVerticalOffset$ICustomTabsCallback;

    invoke-direct {v4}, Lo/getDropDownVerticalOffset$ICustomTabsCallback;-><init>()V

    .line 29342
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->ICustomTabsCallback:Lo/setPopupBackgroundResource;

    invoke-virtual {v2, v4}, Lo/setPopupBackgroundResource;->onNavigationEvent(Lo/setPopupBackgroundDrawable$ICustomTabsCallback;)V

    .line 503
    :cond_4
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    .line 29400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    move-object/from16 v9, v18

    invoke-virtual {v7, v4, v6, v9}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 504
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    .line 30400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    move-object/from16 v10, v17

    invoke-virtual {v7, v4, v6, v10}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 505
    const-class v4, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    .line 31400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v7, v4, v6, v9}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 506
    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    .line 32400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v7, v4, v6, v10}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 507
    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    .line 33400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    move-object/from16 v9, v16

    invoke-virtual {v7, v4, v6, v9}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 508
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    .line 34400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    move-object/from16 v10, p3

    invoke-virtual {v7, v4, v6, v10}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 509
    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    .line 35400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v7, v4, v6, v10}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 510
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    .line 36400
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v7, v4, v6, v9}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 511
    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/getNavigationMode$onMessageChannelReady;

    invoke-direct {v7}, Lo/getNavigationMode$onMessageChannelReady;-><init>()V

    .line 37400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 512
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/getNavigationMode$onMessageChannelReady;

    invoke-direct {v7}, Lo/getNavigationMode$onMessageChannelReady;-><init>()V

    .line 38400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 513
    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/saveHierarchyState$onPostMessage;

    invoke-direct {v7}, Lo/saveHierarchyState$onPostMessage;-><init>()V

    .line 39400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 514
    const-class v4, Ljava/lang/String;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lo/saveHierarchyState$ICustomTabsCallback;

    invoke-direct {v7}, Lo/saveHierarchyState$ICustomTabsCallback;-><init>()V

    .line 40400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 515
    const-class v4, Ljava/lang/String;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lo/saveHierarchyState$onNavigationEvent;

    invoke-direct {v7}, Lo/saveHierarchyState$onNavigationEvent;-><init>()V

    .line 41400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 516
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/fixVectorDrawableTinting$onPostMessage;

    invoke-direct {v7}, Lo/fixVectorDrawableTinting$onPostMessage;-><init>()V

    .line 42400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 518
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/getDisplayOptions$ICustomTabsCallback;

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v7, v9}, Lo/getDisplayOptions$ICustomTabsCallback;-><init>(Landroid/content/res/AssetManager;)V

    .line 43400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 519
    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lo/getDisplayOptions$onMessageChannelReady;

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v7, v9}, Lo/getDisplayOptions$onMessageChannelReady;-><init>(Landroid/content/res/AssetManager;)V

    .line 44400
    iget-object v9, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v9, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 520
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/getOpticalBounds$onNavigationEvent;

    move-object/from16 v9, p1

    invoke-direct {v7, v9}, Lo/getOpticalBounds$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 45400
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 524
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/isFocused$onPostMessage;

    invoke-direct {v7, v9}, Lo/isFocused$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 46400
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v2, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 526
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_5

    .line 527
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/hasWindowFocus$onNavigationEvent;

    invoke-direct {v7, v9}, Lo/hasWindowFocus$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 47400
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v2, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 529
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lo/hasWindowFocus$extraCallback;

    invoke-direct {v7, v9}, Lo/hasWindowFocus$extraCallback;-><init>(Landroid/content/Context;)V

    .line 48400
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v2, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 534
    :cond_5
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/canSafelyMutateDrawable$onMessageChannelReady;

    move-object/from16 v10, p13

    invoke-direct {v7, v10}, Lo/canSafelyMutateDrawable$onMessageChannelReady;-><init>(Landroid/content/ContentResolver;)V

    .line 49400
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v11, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 535
    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lo/canSafelyMutateDrawable$extraCallback;

    invoke-direct {v7, v10}, Lo/canSafelyMutateDrawable$extraCallback;-><init>(Landroid/content/ContentResolver;)V

    .line 50400
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v11, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 536
    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lo/canSafelyMutateDrawable$onNavigationEvent;

    invoke-direct {v7, v10}, Lo/canSafelyMutateDrawable$onNavigationEvent;-><init>(Landroid/content/ContentResolver;)V

    .line 50402
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 540
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/DrawableUtils$onMessageChannelReady;

    invoke-direct {v7}, Lo/DrawableUtils$onMessageChannelReady;-><init>()V

    .line 50404
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 544
    const-class v4, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/parseTintMode$ICustomTabsCallback;

    invoke-direct {v7}, Lo/parseTintMode$ICustomTabsCallback;-><init>()V

    .line 50406
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 545
    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lo/getDropdownItemCount$extraCallback;

    invoke-direct {v7, v9}, Lo/getDropdownItemCount$extraCallback;-><init>(Landroid/content/Context;)V

    .line 50408
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 546
    const-class v4, Lo/setCollapsible;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lo/fixDrawable$onNavigationEvent;

    invoke-direct {v7}, Lo/fixDrawable$onNavigationEvent;-><init>()V

    .line 50410
    iget-object v10, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v10, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 547
    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v6, Lo/setEmbeddedTabView$onPostMessage;

    invoke-direct {v6}, Lo/setEmbeddedTabView$onPostMessage;-><init>()V

    .line 50412
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    move-object/from16 v10, p12

    invoke-virtual {v7, v10, v4, v6}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 548
    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lo/setEmbeddedTabView$extraCallback;

    invoke-direct {v6}, Lo/setEmbeddedTabView$extraCallback;-><init>()V

    .line 50414
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v7, v10, v4, v6}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 549
    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    .line 550
    invoke-static {}, Lo/DialogTitle$onPostMessage;->extraCallback()Lo/DialogTitle$onPostMessage;

    move-result-object v7

    .line 50416
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v11, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 550
    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 551
    invoke-static {}, Lo/DialogTitle$onPostMessage;->extraCallback()Lo/DialogTitle$onPostMessage;

    move-result-object v7

    .line 50418
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v11, v4, v6, v7}, Lo/setNavigationIcon;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 551
    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lo/pointInView;

    invoke-direct {v7}, Lo/pointInView;-><init>()V

    .line 50422
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v11, v8, v7, v4, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 552
    const-class v4, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lo/setDividerPadding;

    invoke-direct {v7, v5}, Lo/setDividerPadding;-><init>(Landroid/content/res/Resources;)V

    .line 50424
    iget-object v11, v2, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    invoke-virtual {v11, v4, v6, v7}, Lo/drawHorizontalDivider;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Lo/drawDividersHorizontal;)V

    .line 554
    const-class v4, Landroid/graphics/Bitmap;

    .line 50426
    iget-object v6, v2, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    move-object/from16 v7, p6

    invoke-virtual {v6, v4, v10, v7}, Lo/drawHorizontalDivider;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Lo/drawDividersHorizontal;)V

    .line 555
    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lo/isBaselineAligned;

    move-object/from16 v11, p7

    invoke-direct {v6, v1, v7, v11}, Lo/isBaselineAligned;-><init>(Lo/dispatchFitSystemWindows;Lo/drawDividersHorizontal;Lo/drawDividersHorizontal;)V

    .line 50428
    iget-object v7, v2, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    invoke-virtual {v7, v4, v10, v6}, Lo/drawHorizontalDivider;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Lo/drawDividersHorizontal;)V

    .line 556
    const-class v4, Lo/toGlobalMotionEvent;

    .line 50430
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    invoke-virtual {v2, v4, v10, v11}, Lo/drawHorizontalDivider;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Lo/drawDividersHorizontal;)V

    .line 563
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_6

    .line 565
    invoke-static/range {p4 .. p4}, Lo/onTouch;->onPostMessage(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;

    move-result-object v1

    .line 566
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    .line 50434
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v2, v8, v1, v4, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 567
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lo/setSelectorEnabled;

    invoke-direct {v7, v5, v1}, Lo/setSelectorEnabled;-><init>(Landroid/content/res/Resources;Lo/applySupportImageTint;)V

    .line 50438
    iget-object v1, v2, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v1, v8, v7, v4, v6}, Lo/getLocationOffset;->onMessageChannelReady(Ljava/lang/String;Lo/applySupportImageTint;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 573
    :cond_6
    new-instance v5, Lo/setContentWidth$ICustomTabsCallback;

    invoke-direct {v5}, Lo/setContentWidth$ICustomTabsCallback;-><init>()V

    .line 574
    new-instance v12, Lo/tintDrawableUsingColorFilter;

    iget-object v4, v0, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lo/tintDrawableUsingColorFilter;-><init>(Landroid/content/Context;Lo/ButtonBarLayout;Lcom/bumptech/glide/Registry;Lo/setContentWidth$ICustomTabsCallback;Lcom/bumptech/glide/Glide$onPostMessage;Ljava/util/Map;Ljava/util/List;Lo/setLineHeight;ZI)V

    iput-object v12, v0, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    return-void

    .line 9592
    :cond_7
    new-instance v1, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v1}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v1

    .line 8592
    :cond_8
    new-instance v1, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v1}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v1
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 6

    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 318
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 319
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    .line 6344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p0

    .line 5344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p0

    .line 4344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    nop

    const/4 p0, 0x5

    const-string v0, "Glide"

    .line 322
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 323
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static ICustomTabsCallback(Landroid/app/Activity;)Lo/AppCompatImageButton;
    .locals 1

    if-eqz p0, :cond_0

    .line 50456
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 50461
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    .line 788
    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/app/Activity;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50458
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ICustomTabsCallback(Landroid/view/View;)Lo/AppCompatImageButton;
    .locals 6

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 50467
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 50472
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    .line 50473
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50474
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_d

    .line 50479
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 50480
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/setWeightSum;->onPostMessage(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 50483
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50490
    :cond_1
    instance-of v2, v1, Lo/onSessionEvent;

    const v3, 0x1020002

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 50491
    check-cast v1, Lo/onSessionEvent;

    .line 50510
    iget-object v2, v0, Lo/setWeightSum;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v2}, Lo/fromMediaItemList;->clear()V

    .line 50512
    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 50530
    iget-object v2, v2, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v2

    .line 50512
    iget-object v5, v0, Lo/setWeightSum;->onMessageChannelReady:Lo/postOrRun;

    .line 50511
    invoke-static {v2, v5}, Lo/setWeightSum;->onNavigationEvent(Ljava/util/Collection;Ljava/util/Map;)V

    .line 50514
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50516
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 50517
    iget-object v3, v0, Lo/setWeightSum;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, p0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_2

    .line 50521
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 50522
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 50528
    :cond_2
    iget-object p0, v0, Lo/setWeightSum;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p0}, Lo/fromMediaItemList;->clear()V

    if-eqz v4, :cond_5

    .line 50532
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 50534
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 50535
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50537
    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 50538
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v1, p0, v4, v2}, Lo/setWeightSum;->onNavigationEvent(Landroid/content/Context;Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50540
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50492
    :cond_5
    invoke-virtual {v0, v1}, Lo/setWeightSum;->onNavigationEvent(Lo/onSessionEvent;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50543
    :cond_6
    iget-object v2, v0, Lo/setWeightSum;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {v2}, Lo/fromMediaItemList;->clear()V

    .line 50544
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v5, v0, Lo/setWeightSum;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {v0, v2, v5}, Lo/setWeightSum;->onNavigationEvent(Landroid/app/FragmentManager;Lo/postOrRun;)V

    .line 50548
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50550
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 50551
    iget-object v3, v0, Lo/setWeightSum;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {v3, p0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Fragment;

    if-nez v4, :cond_7

    .line 50555
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_7

    .line 50556
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_1

    .line 50561
    :cond_7
    iget-object p0, v0, Lo/setWeightSum;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {p0}, Lo/fromMediaItemList;->clear()V

    if-nez v4, :cond_8

    .line 50498
    invoke-virtual {v0, v1}, Lo/setWeightSum;->extraCallback(Landroid/app/Activity;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50563
    :cond_8
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 50567
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result p0

    if-nez p0, :cond_a

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge p0, v1, :cond_9

    goto :goto_2

    .line 50570
    :cond_9
    invoke-virtual {v4}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 50571
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v1, p0, v4, v2}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50568
    :cond_a
    :goto_2
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50564
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50507
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Unable to obtain a request manager for a view without a Context"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50503
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50469
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Lo/onDrawableLoadedFromResources;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 17

    move-object/from16 v0, p1

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 253
    invoke-virtual/range {p2 .. p2}, Lo/getVirtualChildCount;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    new-instance v1, Lo/forceUniformHeight;

    invoke-direct {v1, v14}, Lo/forceUniformHeight;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lo/forceUniformHeight;->extraCallback()Ljava/util/List;

    move-result-object v1

    :cond_1
    move-object v15, v1

    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    .line 258
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 259
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object v3

    .line 260
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 261
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 262
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/measureHorizontal;

    .line 263
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/measureHorizontal;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->onNavigationEvent()Lo/setWeightSum$onMessageChannelReady;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 1491
    :goto_2
    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->newSession:Lo/setWeightSum$onMessageChannelReady;

    .line 284
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    .line 1502
    :cond_7
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->onTransact:Lo/initProgress;

    if-nez v1, :cond_8

    .line 1503
    invoke-static {}, Lo/initProgress;->ICustomTabsCallback()Lo/initProgress;

    move-result-object v1

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->onTransact:Lo/initProgress;

    .line 1506
    :cond_8
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback$Stub:Lo/initProgress;

    if-nez v1, :cond_9

    .line 1507
    invoke-static {}, Lo/initProgress;->onPostMessage()Lo/initProgress;

    move-result-object v1

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback$Stub:Lo/initProgress;

    .line 1510
    :cond_9
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsService:Lo/initProgress;

    if-nez v1, :cond_a

    .line 1511
    invoke-static {}, Lo/initProgress;->onMessageChannelReady()Lo/initProgress;

    move-result-object v1

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsService:Lo/initProgress;

    .line 1514
    :cond_a
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->asInterface:Lo/getViewGroup;

    if-nez v1, :cond_b

    .line 1515
    new-instance v1, Lo/getViewGroup$onNavigationEvent;

    invoke-direct {v1, v14}, Lo/getViewGroup$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 2253
    new-instance v2, Lo/getViewGroup;

    invoke-direct {v2, v1}, Lo/getViewGroup;-><init>(Lo/getViewGroup$onNavigationEvent;)V

    .line 1515
    iput-object v2, v0, Lo/onDrawableLoadedFromResources;->asInterface:Lo/getViewGroup;

    .line 1518
    :cond_b
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->asBinder:Lo/setBaselineAlignedChildIndex;

    if-nez v1, :cond_c

    .line 1519
    new-instance v1, Lo/getBaseline;

    invoke-direct {v1}, Lo/getBaseline;-><init>()V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->asBinder:Lo/setBaselineAlignedChildIndex;

    .line 1522
    :cond_c
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback:Lo/dispatchFitSystemWindows;

    if-nez v1, :cond_e

    .line 1523
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->asInterface:Lo/getViewGroup;

    .line 3092
    iget v1, v1, Lo/getViewGroup;->ICustomTabsCallback:I

    if-lez v1, :cond_d

    .line 1525
    new-instance v2, Lo/getFixedWidthMinor;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Lo/getFixedWidthMinor;-><init>(J)V

    iput-object v2, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback:Lo/dispatchFitSystemWindows;

    goto :goto_4

    .line 1527
    :cond_d
    new-instance v1, Lo/isStacked;

    invoke-direct {v1}, Lo/isStacked;-><init>()V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback:Lo/dispatchFitSystemWindows;

    .line 1531
    :cond_e
    :goto_4
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-nez v1, :cond_f

    .line 1532
    new-instance v1, Lo/getMinWidthMajor;

    iget-object v2, v0, Lo/onDrawableLoadedFromResources;->asInterface:Lo/getViewGroup;

    .line 3097
    iget v2, v2, Lo/getViewGroup;->onPostMessage:I

    .line 1532
    invoke-direct {v1, v2}, Lo/getMinWidthMajor;-><init>(I)V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->onMessageChannelReady:Lo/ButtonBarLayout;

    .line 1535
    :cond_f
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->onNavigationEvent:Lo/DecorToolbar;

    if-nez v1, :cond_10

    .line 1536
    new-instance v1, Lo/hasExpandedActionView;

    iget-object v2, v0, Lo/onDrawableLoadedFromResources;->asInterface:Lo/getViewGroup;

    .line 4087
    iget v2, v2, Lo/getViewGroup;->onMessageChannelReady:I

    int-to-long v2, v2

    .line 1536
    invoke-direct {v1, v2, v3}, Lo/hasExpandedActionView;-><init>(J)V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->onNavigationEvent:Lo/DecorToolbar;

    .line 1539
    :cond_10
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->onRelationshipValidationResult:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

    if-nez v1, :cond_11

    .line 1540
    new-instance v1, Lo/collapseActionView;

    invoke-direct {v1, v14}, Lo/collapseActionView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->onRelationshipValidationResult:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

    .line 1543
    :cond_11
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->extraCallback:Lo/setLineHeight;

    if-nez v1, :cond_12

    .line 1544
    new-instance v1, Lo/setLineHeight;

    iget-object v3, v0, Lo/onDrawableLoadedFromResources;->onNavigationEvent:Lo/DecorToolbar;

    iget-object v4, v0, Lo/onDrawableLoadedFromResources;->onRelationshipValidationResult:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

    iget-object v5, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback$Stub:Lo/initProgress;

    iget-object v6, v0, Lo/onDrawableLoadedFromResources;->onTransact:Lo/initProgress;

    .line 1550
    invoke-static {}, Lo/initProgress;->extraCallback()Lo/initProgress;

    move-result-object v7

    iget-object v8, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsService:Lo/initProgress;

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lo/setLineHeight;-><init>(Lo/DecorToolbar;Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Z)V

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->extraCallback:Lo/setLineHeight;

    .line 1555
    :cond_12
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->warmup:Ljava/util/List;

    if-nez v1, :cond_13

    .line 1556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->warmup:Ljava/util/List;

    goto :goto_5

    .line 1558
    :cond_13
    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->warmup:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/onDrawableLoadedFromResources;->warmup:Ljava/util/List;

    .line 1561
    :goto_5
    new-instance v6, Lo/setWeightSum;

    iget-object v1, v0, Lo/onDrawableLoadedFromResources;->newSession:Lo/setWeightSum$onMessageChannelReady;

    invoke-direct {v6, v1}, Lo/setWeightSum;-><init>(Lo/setWeightSum$onMessageChannelReady;)V

    .line 1564
    new-instance v13, Lcom/bumptech/glide/Glide;

    iget-object v2, v0, Lo/onDrawableLoadedFromResources;->extraCallback:Lo/setLineHeight;

    iget-object v3, v0, Lo/onDrawableLoadedFromResources;->onNavigationEvent:Lo/DecorToolbar;

    iget-object v4, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback:Lo/dispatchFitSystemWindows;

    iget-object v5, v0, Lo/onDrawableLoadedFromResources;->onMessageChannelReady:Lo/ButtonBarLayout;

    iget-object v7, v0, Lo/onDrawableLoadedFromResources;->asBinder:Lo/setBaselineAlignedChildIndex;

    iget v8, v0, Lo/onDrawableLoadedFromResources;->getInterfaceDescriptor:I

    iget-object v9, v0, Lo/onDrawableLoadedFromResources;->ICustomTabsCallback$Stub$Proxy:Lcom/bumptech/glide/Glide$onPostMessage;

    iget-object v10, v0, Lo/onDrawableLoadedFromResources;->onPostMessage:Ljava/util/Map;

    iget-object v11, v0, Lo/onDrawableLoadedFromResources;->warmup:Ljava/util/List;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v0, v13

    move-object v1, v14

    move-object/from16 p0, v14

    move-object v14, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lo/setLineHeight;Lo/DecorToolbar;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;Lo/setWeightSum;Lo/setBaselineAlignedChildIndex;ILcom/bumptech/glide/Glide$onPostMessage;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 291
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_14
    move-object/from16 v1, p0

    .line 307
    invoke-virtual {v1, v14}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 308
    sput-object v14, Lcom/bumptech/glide/Glide;->onTransact:Lcom/bumptech/glide/Glide;

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;
    .locals 1

    if-eqz p0, :cond_0

    .line 50445
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 50450
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onPostMessage:Lo/setWeightSum;

    .line 776
    invoke-virtual {v0, p0}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p0

    return-object p0

    .line 50447
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 3

    .line 177
    sget-object v0, Lcom/bumptech/glide/Glide;->onTransact:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->ICustomTabsCallback(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 180
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v2, Lcom/bumptech/glide/Glide;->onTransact:Lcom/bumptech/glide/Glide;

    if-nez v2, :cond_1

    .line 1195
    sget-boolean v2, Lcom/bumptech/glide/Glide;->onRelationshipValidationResult:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1200
    sput-boolean v2, Lcom/bumptech/glide/Glide;->onRelationshipValidationResult:Z

    .line 1242
    new-instance v2, Lo/onDrawableLoadedFromResources;

    invoke-direct {v2}, Lo/onDrawableLoadedFromResources;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/bumptech/glide/Glide;->onMessageChannelReady(Landroid/content/Context;Lo/onDrawableLoadedFromResources;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    .line 1202
    sput-boolean p0, Lcom/bumptech/glide/Glide;->onRelationshipValidationResult:Z

    goto :goto_0

    .line 1196
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 187
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/Glide;->onTransact:Lcom/bumptech/glide/Glide;

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 50583
    invoke-static {}, Lo/getHorizontalOffset;->onPostMessage()V

    .line 50585
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->asInterface:Lo/DecorToolbar;

    invoke-interface {v0}, Lo/DecorToolbar;->onNavigationEvent()V

    .line 50586
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    invoke-interface {v0}, Lo/dispatchFitSystemWindows;->onPostMessage()V

    .line 50587
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->onMessageChannelReady:Lo/ButtonBarLayout;

    invoke-interface {v0}, Lo/ButtonBarLayout;->onPostMessage()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/ListPopupWindow;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListPopupWindow<",
            "*>;)Z"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AppCompatImageButton;

    .line 871
    invoke-virtual {v2, p1}, Lo/AppCompatImageButton;->onNavigationEvent(Lo/ListPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 872
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 875
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 50572
    invoke-static {}, Lo/getHorizontalOffset;->onPostMessage()V

    .line 50575
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AppCompatImageButton;

    .line 50576
    invoke-virtual {v1, p1}, Lo/AppCompatImageButton;->onTrimMemory(I)V

    goto :goto_0

    .line 50579
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->asInterface:Lo/DecorToolbar;

    invoke-interface {v0, p1}, Lo/DecorToolbar;->ICustomTabsCallback(I)V

    .line 50580
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    invoke-interface {v0, p1}, Lo/dispatchFitSystemWindows;->ICustomTabsCallback(I)V

    .line 50581
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->onMessageChannelReady:Lo/ButtonBarLayout;

    invoke-interface {v0, p1}, Lo/ButtonBarLayout;->onMessageChannelReady(I)V

    return-void
.end method
