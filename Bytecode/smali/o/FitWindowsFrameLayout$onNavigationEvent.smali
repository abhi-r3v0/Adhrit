.class public final Lo/FitWindowsFrameLayout$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FitWindowsFrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FitWindowsFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getDropDownVerticalOffset;

.field private final onMessageChannelReady:Lo/ButtonBarLayout;

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lo/ButtonBarLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/ButtonBarLayout;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p3, :cond_1

    .line 80
    check-cast p3, Lo/ButtonBarLayout;

    iput-object p3, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    if-eqz p2, :cond_0

    .line 81
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 83
    new-instance p2, Lo/getDropDownVerticalOffset;

    invoke-direct {p2, p1}, Lo/getDropDownVerticalOffset;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->ICustomTabsCallback:Lo/getDropDownVerticalOffset;

    return-void

    .line 2029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onPostMessage:Ljava/util/List;

    iget-object v1, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->ICustomTabsCallback:Lo/getDropDownVerticalOffset;

    iget-object v2, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    .line 2162
    new-instance v3, Lo/setSupportImageTintMode$5;

    invoke-direct {v3, v1, v2}, Lo/setSupportImageTintMode$5;-><init>(Lo/getDropDownVerticalOffset;Lo/ButtonBarLayout;)V

    invoke-static {v0, v3}, Lo/setSupportImageTintMode;->extraCallback(Ljava/util/List;Lo/setSupportImageTintMode$onPostMessage;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->ICustomTabsCallback:Lo/getDropDownVerticalOffset;

    .line 2034
    iget-object v0, v0, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    invoke-virtual {v0}, Lo/getDropDownVerticalOffset$extraCallback;->onMessageChannelReady()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onPostMessage:Ljava/util/List;

    iget-object v1, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->ICustomTabsCallback:Lo/getDropDownVerticalOffset;

    iget-object v2, p0, Lo/FitWindowsFrameLayout$onNavigationEvent;->onMessageChannelReady:Lo/ButtonBarLayout;

    .line 2082
    new-instance v3, Lo/setSupportImageTintMode$1;

    invoke-direct {v3, v1, v2}, Lo/setSupportImageTintMode$1;-><init>(Lo/getDropDownVerticalOffset;Lo/ButtonBarLayout;)V

    invoke-static {v0, v3}, Lo/setSupportImageTintMode;->onMessageChannelReady(Ljava/util/List;Lo/setSupportImageTintMode$onNavigationEvent;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
