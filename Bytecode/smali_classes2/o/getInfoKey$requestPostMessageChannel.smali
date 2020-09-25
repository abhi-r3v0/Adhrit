.class final Lo/getInfoKey$requestPostMessageChannel;
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
    name = "requestPostMessageChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lo/getInfoKey$requestPostMessageChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 244
    check-cast p1, Ljava/lang/Float;

    .line 1248
    new-instance v0, Lo/getInfoKey$mayLaunchUrl;

    invoke-direct {v0, p1}, Lo/getInfoKey$mayLaunchUrl;-><init>(Ljava/lang/Float;)V

    return-object v0
.end method
