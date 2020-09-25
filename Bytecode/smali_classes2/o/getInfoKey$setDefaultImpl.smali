.class final Lo/getInfoKey$setDefaultImpl;
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
    name = "setDefaultImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getInfoKey$setDefaultImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 76
    check-cast p1, Ljava/util/List;

    .line 1080
    new-instance v0, Lo/getInfoKey$getDefaultImpl;

    invoke-direct {v0, p1}, Lo/getInfoKey$getDefaultImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method
