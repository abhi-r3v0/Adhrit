.class public final enum Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity$2$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum ICustomTabsCallback$Stub:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum asBinder:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum asInterface:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum extraCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field private static final synthetic getInterfaceDescriptor:[Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field private static final newSession:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum onPostMessage:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum onRelationshipValidationResult:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

.field public static final enum onTransact:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;


# instance fields
.field private final ICustomTabsService:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "HTTP_METHOD_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 28
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "GET"

    invoke-direct {v0, v3, v2, v2}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 29
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3, v3}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 30
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "POST"

    invoke-direct {v0, v5, v4, v4}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 31
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    invoke-direct {v0, v6, v5, v5}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onNavigationEvent:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 32
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v6, 0x5

    const-string v7, "HEAD"

    invoke-direct {v0, v7, v6, v6}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asBinder:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 33
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v7, 0x6

    const-string v8, "PATCH"

    invoke-direct {v0, v8, v7, v7}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onRelationshipValidationResult:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 34
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/4 v8, 0x7

    const-string v9, "OPTIONS"

    invoke-direct {v0, v9, v8, v8}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 35
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/16 v9, 0x8

    const-string v10, "TRACE"

    invoke-direct {v0, v10, v9, v9}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onTransact:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 36
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/16 v10, 0x9

    const-string v11, "CONNECT"

    invoke-direct {v0, v11, v10, v10}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asInterface:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    const/16 v11, 0xa

    new-array v11, v11, [Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 37
    sget-object v12, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v12, v11, v1

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v2

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v3

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v4

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onNavigationEvent:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v5

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asBinder:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v6

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onRelationshipValidationResult:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v7

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v8

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onTransact:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->getInterfaceDescriptor:[Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 38
    new-instance v0, Lo/ArticleListActivity$1;

    invoke-direct {v0}, Lo/ArticleListActivity$1;-><init>()V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->newSession:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsService:I

    return-void
.end method

.method public static extraCallback(I)Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :pswitch_0
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asInterface:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 12
    :pswitch_1
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onTransact:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 11
    :pswitch_2
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onRelationshipValidationResult:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 9
    :pswitch_4
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asBinder:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onNavigationEvent:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 6
    :pswitch_7
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 5
    :pswitch_8
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    .line 4
    :pswitch_9
    sget-object p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extraCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 15
    sget-object v0, Lo/A;->extraCallback:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;
    .locals 1

    .line 1
    sget-object v0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->getInterfaceDescriptor:[Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    invoke-virtual {v0}, [Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsService:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
