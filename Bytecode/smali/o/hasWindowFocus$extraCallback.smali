.class public final Lo/hasWindowFocus$extraCallback;
.super Lo/hasWindowFocus$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasWindowFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hasWindowFocus$ICustomTabsCallback<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 239
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1, v0}, Lo/hasWindowFocus$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
