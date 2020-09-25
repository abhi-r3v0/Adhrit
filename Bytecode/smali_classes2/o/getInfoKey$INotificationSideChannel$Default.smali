.class final Lo/getInfoKey$INotificationSideChannel$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMaxName$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lo/getInfoKey$INotificationSideChannel$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 228
    check-cast p1, Ljava/lang/Long;

    .line 1232
    new-instance v0, Lo/getInfoKey$INotificationSideChannel$Stub$Proxy;

    invoke-direct {v0, p1}, Lo/getInfoKey$INotificationSideChannel$Stub$Proxy;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method
