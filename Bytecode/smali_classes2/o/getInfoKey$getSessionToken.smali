.class final Lo/getInfoKey$getSessionToken;
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
    name = "getSessionToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lo/getInfoKey$getSessionToken;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 2

    .line 260
    check-cast p1, Ljava/lang/String;

    .line 1264
    new-instance v0, Lo/getInfoKey$connect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getInfoKey$connect;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method
