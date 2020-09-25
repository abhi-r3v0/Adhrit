.class public final enum Lo/cK$onPostMessage$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/eV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cK$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/cK$onPostMessage$onNavigationEvent;",
        ">;",
        "Lo/eV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum ICustomTabsCallback$Stub:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum asBinder:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final asInterface:Lo/fc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fc<",
            "Lo/cK$onPostMessage$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum extraCallback:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final synthetic getInterfaceDescriptor:[Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum onMessageChannelReady:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum onNavigationEvent:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum onPostMessage:Lo/cK$onPostMessage$onNavigationEvent;

.field private static final enum onTransact:Lo/cK$onPostMessage$onNavigationEvent;


# instance fields
.field private final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1, v1}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->onPostMessage:Lo/cK$onPostMessage$onNavigationEvent;

    .line 28
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "NULL"

    invoke-direct {v0, v3, v2, v2}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->extraCallback:Lo/cK$onPostMessage$onNavigationEvent;

    .line 29
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "STRING"

    invoke-direct {v0, v4, v3, v3}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/cK$onPostMessage$onNavigationEvent;

    .line 30
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "NUMBER"

    invoke-direct {v0, v5, v4, v4}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/cK$onPostMessage$onNavigationEvent;

    .line 31
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "BOOLEAN"

    invoke-direct {v0, v6, v5, v5}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/cK$onPostMessage$onNavigationEvent;

    .line 32
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v6, 0x5

    const-string v7, "LIST"

    invoke-direct {v0, v7, v6, v6}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->onTransact:Lo/cK$onPostMessage$onNavigationEvent;

    .line 33
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v7, 0x6

    const-string v8, "MAP"

    invoke-direct {v0, v8, v7, v7}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->asBinder:Lo/cK$onPostMessage$onNavigationEvent;

    .line 34
    new-instance v0, Lo/cK$onPostMessage$onNavigationEvent;

    const/4 v8, 0x7

    const-string v9, "STATEMENT"

    invoke-direct {v0, v9, v8, v8}, Lo/cK$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/cK$onPostMessage$onNavigationEvent;

    const/16 v9, 0x8

    new-array v9, v9, [Lo/cK$onPostMessage$onNavigationEvent;

    .line 35
    sget-object v10, Lo/cK$onPostMessage$onNavigationEvent;->onPostMessage:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v10, v9, v1

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->extraCallback:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v2

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v3

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v4

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v5

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->onTransact:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v6

    sget-object v1, Lo/cK$onPostMessage$onNavigationEvent;->asBinder:Lo/cK$onPostMessage$onNavigationEvent;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lo/cK$onPostMessage$onNavigationEvent;->getInterfaceDescriptor:[Lo/cK$onPostMessage$onNavigationEvent;

    .line 36
    new-instance v0, Lo/bV;

    invoke-direct {v0}, Lo/bV;-><init>()V

    sput-object v0, Lo/cK$onPostMessage$onNavigationEvent;->asInterface:Lo/fc;

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
    iput p3, p0, Lo/cK$onPostMessage$onNavigationEvent;->onRelationshipValidationResult:I

    return-void
.end method

.method public static onMessageChannelReady()Lo/fI;
    .locals 1

    .line 13
    sget-object v0, Lo/cM;->onMessageChannelReady:Lo/fI;

    return-object v0
.end method

.method public static onPostMessage(I)Lo/cK$onPostMessage$onNavigationEvent;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :pswitch_0
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 10
    :pswitch_1
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->asBinder:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 9
    :pswitch_2
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->onTransact:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 8
    :pswitch_3
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 5
    :pswitch_6
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->extraCallback:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    .line 4
    :pswitch_7
    sget-object p0, Lo/cK$onPostMessage$onNavigationEvent;->onPostMessage:Lo/cK$onPostMessage$onNavigationEvent;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static values()[Lo/cK$onPostMessage$onNavigationEvent;
    .locals 1

    .line 1
    sget-object v0, Lo/cK$onPostMessage$onNavigationEvent;->getInterfaceDescriptor:[Lo/cK$onPostMessage$onNavigationEvent;

    invoke-virtual {v0}, [Lo/cK$onPostMessage$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/cK$onPostMessage$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/cK$onPostMessage$onNavigationEvent;->onRelationshipValidationResult:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lo/cK$onPostMessage$onNavigationEvent;->onRelationshipValidationResult:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lo/cK$onPostMessage$onNavigationEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
