.class public Lo/getEventName$onPostMessage;
.super Lo/getTransformToApply;
.source ""

# interfaces
.implements Lo/getEventName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEventName$onPostMessage$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-direct {p0, v0}, Lo/getTransformToApply;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static extraCallback(Landroid/os/IBinder;)Lo/getEventName;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lo/getEventName;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lo/getEventName;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lo/getEventName$onPostMessage$extraCallback;

    invoke-direct {v0, p0}, Lo/getEventName$onPostMessage$extraCallback;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
