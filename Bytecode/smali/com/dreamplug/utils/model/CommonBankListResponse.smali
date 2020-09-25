.class public final Lcom/dreamplug/utils/model/CommonBankListResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/utils/model/CommonBankListResponse;",
        "",
        "()V",
        "banks",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "getBanks",
        "()Ljava/util/List;",
        "setBanks",
        "(Ljava/util/List;)V",
        "BanksDetail",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private banks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBanks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/dreamplug/utils/model/CommonBankListResponse;->banks:Ljava/util/List;

    return-object v0
.end method

.method public final setBanks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/dreamplug/utils/model/CommonBankListResponse;->banks:Ljava/util/List;

    return-void
.end method
