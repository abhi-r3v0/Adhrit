.class public final Lo/isTitleTruncated$onPostMessage;
.super Lo/isTitleTruncated$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isTitleTruncated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isTitleTruncated$extraCallback<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    new-instance v0, Lo/isTitleTruncated$onPostMessage$4;

    invoke-direct {v0}, Lo/isTitleTruncated$onPostMessage$4;-><init>()V

    invoke-direct {p0, v0}, Lo/isTitleTruncated$extraCallback;-><init>(Lo/isTitleTruncated$ICustomTabsCallback;)V

    return-void
.end method
