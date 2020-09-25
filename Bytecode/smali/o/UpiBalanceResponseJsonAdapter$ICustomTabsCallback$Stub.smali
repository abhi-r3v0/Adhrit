.class final Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:I

.field public final asBinder:I

.field public final asInterface:I

.field public final extraCallback:I

.field public final getInterfaceDescriptor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$asInterface;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:I

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:I


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Lo/UpiBalanceResponseJsonAdapter$asInterface;",
            ">;)V"
        }
    .end annotation

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    .line 934
    iput-boolean p2, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    .line 935
    iput p3, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onNavigationEvent:I

    .line 936
    iput p4, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onPostMessage:I

    .line 937
    iput p5, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->extraCallback:I

    .line 938
    iput p6, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onTransact:I

    .line 939
    iput p7, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:I

    .line 940
    iput p8, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->asBinder:I

    .line 941
    iput p9, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->asInterface:I

    .line 942
    iput p10, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onRelationshipValidationResult:I

    .line 943
    iput-object p11, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 951
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 952
    iget-object v1, p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
