.class public final enum Lo/parseFile$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/parseFile$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/parseFile$onMessageChannelReady;

.field public static final enum COMBINED:Lo/parseFile$onMessageChannelReady;

.field public static final enum GLOBAL:Lo/parseFile$onMessageChannelReady;

.field public static final enum NONE:Lo/parseFile$onMessageChannelReady;

.field public static final enum SDK:Lo/parseFile$onMessageChannelReady;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lo/parseFile$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lo/parseFile$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/parseFile$onMessageChannelReady;->NONE:Lo/parseFile$onMessageChannelReady;

    .line 30
    new-instance v0, Lo/parseFile$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "SDK"

    invoke-direct {v0, v3, v2, v2}, Lo/parseFile$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/parseFile$onMessageChannelReady;->SDK:Lo/parseFile$onMessageChannelReady;

    .line 31
    new-instance v0, Lo/parseFile$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "GLOBAL"

    invoke-direct {v0, v4, v3, v3}, Lo/parseFile$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/parseFile$onMessageChannelReady;->GLOBAL:Lo/parseFile$onMessageChannelReady;

    .line 32
    new-instance v0, Lo/parseFile$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "COMBINED"

    invoke-direct {v0, v5, v4, v4}, Lo/parseFile$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/parseFile$onMessageChannelReady;->COMBINED:Lo/parseFile$onMessageChannelReady;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/parseFile$onMessageChannelReady;

    .line 28
    sget-object v6, Lo/parseFile$onMessageChannelReady;->NONE:Lo/parseFile$onMessageChannelReady;

    aput-object v6, v5, v1

    sget-object v1, Lo/parseFile$onMessageChannelReady;->SDK:Lo/parseFile$onMessageChannelReady;

    aput-object v1, v5, v2

    sget-object v1, Lo/parseFile$onMessageChannelReady;->GLOBAL:Lo/parseFile$onMessageChannelReady;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/parseFile$onMessageChannelReady;->$VALUES:[Lo/parseFile$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lo/parseFile$onMessageChannelReady;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/parseFile$onMessageChannelReady;
    .locals 1

    .line 28
    const-class v0, Lo/parseFile$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/parseFile$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/parseFile$onMessageChannelReady;
    .locals 1

    .line 28
    sget-object v0, Lo/parseFile$onMessageChannelReady;->$VALUES:[Lo/parseFile$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/parseFile$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/parseFile$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 41
    iget v0, p0, Lo/parseFile$onMessageChannelReady;->code:I

    return v0
.end method
