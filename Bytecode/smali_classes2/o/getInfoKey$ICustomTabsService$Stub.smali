.class final Lo/getInfoKey$ICustomTabsService$Stub;
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
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getMaxName$onPostMessage<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lo/getInfoKey$ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .line 124
    check-cast p1, Landroid/os/IBinder;

    .line 1128
    new-instance v0, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;

    invoke-direct {v0, p1}, Lo/getInfoKey$ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
