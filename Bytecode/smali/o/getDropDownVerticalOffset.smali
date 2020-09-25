.class public final Lo/getDropDownVerticalOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDropDownVerticalOffset$extraCallback;,
        Lo/getDropDownVerticalOffset$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/getDropDownVerticalOffset$extraCallback;

    invoke-direct {v0, p1}, Lo/getDropDownVerticalOffset$extraCallback;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lo/getDropDownVerticalOffset;->ICustomTabsCallback:Lo/getDropDownVerticalOffset$extraCallback;

    invoke-virtual {v0}, Lo/getDropDownVerticalOffset$extraCallback;->onMessageChannelReady()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
