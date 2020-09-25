.class public final Lo/getDropDownVerticalOffset$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDropDownVerticalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;
    .locals 1

    .line 45
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1052
    new-instance v0, Lo/getDropDownVerticalOffset;

    invoke-direct {v0, p1}, Lo/getDropDownVerticalOffset;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
