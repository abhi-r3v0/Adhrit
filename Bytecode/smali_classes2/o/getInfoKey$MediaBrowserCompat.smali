.class final Lo/getInfoKey$MediaBrowserCompat;
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
    name = "MediaBrowserCompat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lo/getInfoKey$MediaBrowserCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 140
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 1144
    new-instance v0, Lo/getInfoKey$AudioAttributesImplBaseParcelizer;

    invoke-direct {v0, p1}, Lo/getInfoKey$AudioAttributesImplBaseParcelizer;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method
