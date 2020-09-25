.class public final enum Lo/onCreateLoader;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onCreateLoader;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/onCreateLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum extraCallback:Lo/onCreateLoader;

.field public static final enum onMessageChannelReady:Lo/onCreateLoader;

.field public static final enum onNavigationEvent:Lo/onCreateLoader;

.field public static final enum onPostMessage:Lo/onCreateLoader;

.field private static final synthetic onTransact:[Lo/onCreateLoader;


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lo/onCreateLoader;

    const/4 v1, 0x0

    const-string v2, "APPLICATION_PROCESS_STATE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/onCreateLoader;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    .line 16
    new-instance v0, Lo/onCreateLoader;

    const/4 v2, 0x1

    const-string v3, "FOREGROUND"

    invoke-direct {v0, v3, v2, v2}, Lo/onCreateLoader;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onCreateLoader;->extraCallback:Lo/onCreateLoader;

    .line 17
    new-instance v0, Lo/onCreateLoader;

    const/4 v3, 0x2

    const-string v4, "BACKGROUND"

    invoke-direct {v0, v4, v3, v3}, Lo/onCreateLoader;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onCreateLoader;->onNavigationEvent:Lo/onCreateLoader;

    .line 18
    new-instance v0, Lo/onCreateLoader;

    const/4 v4, 0x3

    const-string v5, "FOREGROUND_BACKGROUND"

    invoke-direct {v0, v5, v4, v4}, Lo/onCreateLoader;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onCreateLoader;->onPostMessage:Lo/onCreateLoader;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/onCreateLoader;

    .line 19
    sget-object v6, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    aput-object v6, v5, v1

    sget-object v1, Lo/onCreateLoader;->extraCallback:Lo/onCreateLoader;

    aput-object v1, v5, v2

    sget-object v1, Lo/onCreateLoader;->onNavigationEvent:Lo/onCreateLoader;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/onCreateLoader;->onTransact:[Lo/onCreateLoader;

    .line 20
    new-instance v0, Lo/i;

    invoke-direct {v0}, Lo/i;-><init>()V

    sput-object v0, Lo/onCreateLoader;->ICustomTabsCallback:Lo/onItemLongClick;

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
    iput p3, p0, Lo/onCreateLoader;->asInterface:I

    return-void
.end method

.method public static extraCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/onLoaderReset;->onPostMessage:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/onCreateLoader;
    .locals 1

    .line 1
    sget-object v0, Lo/onCreateLoader;->onTransact:[Lo/onCreateLoader;

    invoke-virtual {v0}, [Lo/onCreateLoader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onCreateLoader;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/onCreateLoader;->asInterface:I

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

    invoke-virtual {p0}, Lo/onCreateLoader;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/onCreateLoader;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
