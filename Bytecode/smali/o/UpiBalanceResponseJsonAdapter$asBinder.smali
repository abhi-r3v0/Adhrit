.class final Lo/UpiBalanceResponseJsonAdapter$asBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asBinder"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

.field public asBinder:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

.field public final asInterface:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:I

.field public final onPostMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final onRelationshipValidationResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    .line 820
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage:Landroid/util/SparseArray;

    .line 821
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onMessageChannelReady:Landroid/util/SparseArray;

    .line 822
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    .line 823
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asInterface:Landroid/util/SparseArray;

    .line 829
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    .line 830
    iput p2, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    .line 834
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 835
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 836
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 837
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 838
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asBinder:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    .line 840
    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    return-void
.end method
