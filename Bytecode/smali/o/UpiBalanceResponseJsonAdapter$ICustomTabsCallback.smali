.class final Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:I

    .line 887
    iput p2, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    .line 888
    iput p3, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 889
    iput-object p4, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->extraCallback:Landroid/util/SparseArray;

    return-void
.end method
