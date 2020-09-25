.class public final Lo/setSupportImageTintMode$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportImageTintMode$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSupportImageTintMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getDropDownVerticalOffset;

.field private synthetic onNavigationEvent:Lo/ButtonBarLayout;


# direct methods
.method public constructor <init>(Lo/getDropDownVerticalOffset;Lo/ButtonBarLayout;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lo/setSupportImageTintMode$5;->onMessageChannelReady:Lo/getDropDownVerticalOffset;

    iput-object p2, p0, Lo/setSupportImageTintMode$5;->onNavigationEvent:Lo/ButtonBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    :try_start_0
    new-instance v1, Lo/FitWindowsViewGroup;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lo/setSupportImageTintMode$5;->onMessageChannelReady:Lo/getDropDownVerticalOffset;

    .line 1034
    iget-object v3, v3, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    invoke-virtual {v3}, Lo/getDropDownVerticalOffset$extraCallback;->onMessageChannelReady()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lo/setSupportImageTintMode$5;->onNavigationEvent:Lo/ButtonBarLayout;

    invoke-direct {v1, v2, v3}, Lo/FitWindowsViewGroup;-><init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    iget-object v0, p0, Lo/setSupportImageTintMode$5;->onNavigationEvent:Lo/ButtonBarLayout;

    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/load/ImageHeaderParser;->onMessageChannelReady(Ljava/io/InputStream;Lo/ButtonBarLayout;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :catch_0
    iget-object v0, p0, Lo/setSupportImageTintMode$5;->onMessageChannelReady:Lo/getDropDownVerticalOffset;

    .line 2034
    iget-object v0, v0, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    invoke-virtual {v0}, Lo/getDropDownVerticalOffset$extraCallback;->onMessageChannelReady()Landroid/os/ParcelFileDescriptor;

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 180
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :catch_1
    :cond_0
    iget-object v0, p0, Lo/setSupportImageTintMode$5;->onMessageChannelReady:Lo/getDropDownVerticalOffset;

    .line 3034
    iget-object v0, v0, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    invoke-virtual {v0}, Lo/getDropDownVerticalOffset$extraCallback;->onMessageChannelReady()Landroid/os/ParcelFileDescriptor;

    .line 185
    throw p1
.end method
