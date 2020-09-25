.class final Lo/getInfoKey$asBinder;
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
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lo/getInfoKey$asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 252
    check-cast p1, Ljava/lang/Byte;

    .line 1256
    new-instance v0, Lo/getInfoKey$onRelationshipValidationResult;

    invoke-direct {v0, p1}, Lo/getInfoKey$onRelationshipValidationResult;-><init>(Ljava/lang/Byte;)V

    return-object v0
.end method
