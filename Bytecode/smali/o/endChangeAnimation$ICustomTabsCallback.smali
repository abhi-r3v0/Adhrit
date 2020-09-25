.class public final Lo/endChangeAnimation$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentRequestItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endChangeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTAAdapter$Companion;",
        "",
        "()V",
        "ITEM_CTA",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

.field public onPostMessage:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p1, p0, Lo/endChangeAnimation$ICustomTabsCallback;->onPostMessage:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 1003
    iput-object p2, p0, Lo/endChangeAnimation$ICustomTabsCallback;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1006
    iget-object v0, p0, Lo/endChangeAnimation$ICustomTabsCallback;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
