.class final Lo/SettingsSpiCall$onPostMessage$onPostMessage$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SettingsSpiCall$onPostMessage$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/SettingsSpiCall$onPostMessage$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2046
    new-instance v0, Landroid/os/Bundle;

    const-class v1, Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 2047
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 2048
    new-instance p1, Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lo/SettingsSpiCall$onPostMessage$onPostMessage;-><init>(Landroid/os/Bundle;B)V

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1053
    new-array p1, p1, [Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    return-object p1
.end method
