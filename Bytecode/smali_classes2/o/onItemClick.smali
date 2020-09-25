.class public final enum Lo/onItemClick;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onItemClick;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/onItemClick;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum extraCallback:Lo/onItemClick;

.field private static final enum onMessageChannelReady:Lo/onItemClick;

.field private static final enum onNavigationEvent:Lo/onItemClick;

.field private static final enum onPostMessage:Lo/onItemClick;

.field private static final synthetic onTransact:[Lo/onItemClick;


# instance fields
.field private final ICustomTabsCallback$Stub:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lo/onItemClick;

    const/4 v1, 0x0

    const-string v2, "SERVICE_WORKER_STATUS_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/onItemClick;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onItemClick;->onMessageChannelReady:Lo/onItemClick;

    .line 16
    new-instance v0, Lo/onItemClick;

    const/4 v2, 0x1

    const-string v3, "UNSUPPORTED"

    invoke-direct {v0, v3, v2, v2}, Lo/onItemClick;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onItemClick;->extraCallback:Lo/onItemClick;

    .line 17
    new-instance v0, Lo/onItemClick;

    const/4 v3, 0x2

    const-string v4, "CONTROLLED"

    invoke-direct {v0, v4, v3, v3}, Lo/onItemClick;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onItemClick;->onNavigationEvent:Lo/onItemClick;

    .line 18
    new-instance v0, Lo/onItemClick;

    const/4 v4, 0x3

    const-string v5, "UNCONTROLLED"

    invoke-direct {v0, v5, v4, v4}, Lo/onItemClick;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onItemClick;->onPostMessage:Lo/onItemClick;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/onItemClick;

    .line 19
    sget-object v6, Lo/onItemClick;->onMessageChannelReady:Lo/onItemClick;

    aput-object v6, v5, v1

    sget-object v1, Lo/onItemClick;->extraCallback:Lo/onItemClick;

    aput-object v1, v5, v2

    sget-object v1, Lo/onItemClick;->onNavigationEvent:Lo/onItemClick;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/onItemClick;->onTransact:[Lo/onItemClick;

    .line 20
    new-instance v0, Lo/CategoryListActivity;

    invoke-direct {v0}, Lo/CategoryListActivity;-><init>()V

    sput-object v0, Lo/onItemClick;->ICustomTabsCallback:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lo/onItemClick;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public static onNavigationEvent()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/D;->onPostMessage:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/onItemClick;
    .locals 1

    .line 1
    sget-object v0, Lo/onItemClick;->onTransact:[Lo/onItemClick;

    invoke-virtual {v0}, [Lo/onItemClick;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onItemClick;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/onItemClick;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/onItemClick;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/onItemClick;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
