.class final Lo/getInfoKey$ICustomTabsCallback$Stub$Proxy;
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
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "[C>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lo/getInfoKey$ICustomTabsCallback$Stub$Proxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 108
    check-cast p1, [C

    .line 1112
    new-instance v0, Lo/getInfoKey$onTransact;

    invoke-direct {v0, p1}, Lo/getInfoKey$onTransact;-><init>([C)V

    return-object v0
.end method
