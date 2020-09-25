.class public final Lo/FitWindowsFrameLayout$onPostMessage;
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
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ButtonBarLayout;

.field private final onMessageChannelReady:Lo/getDropDownHorizontalOffset;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lo/ButtonBarLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/ButtonBarLayout;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p3, :cond_1

    .line 41
    move-object v1, p3

    check-cast v1, Lo/ButtonBarLayout;

    iput-object v1, p0, Lo/FitWindowsFrameLayout$onPostMessage;->ICustomTabsCallback:Lo/ButtonBarLayout;

    if-eqz p2, :cond_0

    .line 42
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 44
    new-instance p2, Lo/getDropDownHorizontalOffset;

    invoke-direct {p2, p1, p3}, Lo/getDropDownHorizontalOffset;-><init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V

    iput-object p2, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onMessageChannelReady:Lo/getDropDownHorizontalOffset;

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
    .locals 1

    .line 66
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onMessageChannelReady:Lo/getDropDownHorizontalOffset;

    .line 5041
    iget-object v0, v0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v0}, Lo/FitWindowsViewGroup;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onNavigationEvent:Ljava/util/List;

    iget-object v1, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onMessageChannelReady:Lo/getDropDownHorizontalOffset;

    .line 5031
    iget-object v2, v1, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 5032
    iget-object v1, v1, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    .line 61
    iget-object v2, p0, Lo/FitWindowsFrameLayout$onPostMessage;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 60
    invoke-static {v0, v1, v2}, Lo/setSupportImageTintMode;->extraCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)I

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

    .line 50
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onMessageChannelReady:Lo/getDropDownHorizontalOffset;

    .line 3031
    iget-object v1, v0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 3032
    iget-object v0, v0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onNavigationEvent:Ljava/util/List;

    iget-object v1, p0, Lo/FitWindowsFrameLayout$onPostMessage;->onMessageChannelReady:Lo/getDropDownHorizontalOffset;

    .line 4031
    iget-object v2, v1, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 4032
    iget-object v1, v1, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    .line 55
    iget-object v2, p0, Lo/FitWindowsFrameLayout$onPostMessage;->ICustomTabsCallback:Lo/ButtonBarLayout;

    invoke-static {v0, v1, v2}, Lo/setSupportImageTintMode;->ICustomTabsCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
