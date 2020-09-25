.class final Lo/getInfoKey$postMessage;
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
    name = "postMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lo/getInfoKey$postMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 236
    check-cast p1, Ljava/lang/Double;

    .line 1240
    new-instance v0, Lo/getInfoKey$updateVisuals;

    invoke-direct {v0, p1}, Lo/getInfoKey$updateVisuals;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method
