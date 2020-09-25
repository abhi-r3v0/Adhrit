.class final Lo/getInfoKey$write;
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
    name = "write"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 2

    .line 268
    check-cast p1, Landroid/os/Parcelable;

    .line 1272
    new-instance v0, Lo/getInfoKey$AudioAttributesCompatParcelizer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getInfoKey$AudioAttributesCompatParcelizer;-><init>(Landroid/os/Parcelable;B)V

    return-object v0
.end method
