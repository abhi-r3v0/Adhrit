.class public final Lo/getEventName$onPostMessage$extraCallback;
.super Lo/setMaintainAspectRatio;
.source ""

# interfaces
.implements Lo/getEventName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventName$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/setMaintainAspectRatio;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
