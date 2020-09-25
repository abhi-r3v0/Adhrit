.class public final enum Lo/onBecameForeground$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onBecameForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onBecameForeground$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/onBecameForeground$ICustomTabsCallback;

.field private static enum ICustomTabsCallback$Stub:Lo/onBecameForeground$ICustomTabsCallback;

.field private static final synthetic asBinder:[Lo/onBecameForeground$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/onBecameForeground$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/onBecameForeground$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/onBecameForeground$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/onBecameForeground$ICustomTabsCallback;


# instance fields
.field private final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "NOT_SO"

    const-string v3, "not_so"

    invoke-direct {v0, v2, v1, v3}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->ICustomTabsCallback:Lo/onBecameForeground$ICustomTabsCallback;

    .line 37
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "X86"

    const-string/jumbo v4, "x86"

    invoke-direct {v0, v3, v2, v4}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->onMessageChannelReady:Lo/onBecameForeground$ICustomTabsCallback;

    .line 38
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "ARM"

    const-string v5, "armeabi-v7a"

    invoke-direct {v0, v4, v3, v5}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->extraCallback:Lo/onBecameForeground$ICustomTabsCallback;

    .line 39
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "X86_64"

    const-string/jumbo v6, "x86_64"

    invoke-direct {v0, v5, v4, v6}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->onPostMessage:Lo/onBecameForeground$ICustomTabsCallback;

    .line 40
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "AARCH64"

    const-string v7, "arm64-v8a"

    invoke-direct {v0, v6, v5, v7}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->onNavigationEvent:Lo/onBecameForeground$ICustomTabsCallback;

    .line 41
    new-instance v0, Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "OTHERS"

    const-string v8, "others"

    invoke-direct {v0, v7, v6, v8}, Lo/onBecameForeground$ICustomTabsCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onBecameForeground$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onBecameForeground$ICustomTabsCallback;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/onBecameForeground$ICustomTabsCallback;

    .line 35
    sget-object v8, Lo/onBecameForeground$ICustomTabsCallback;->ICustomTabsCallback:Lo/onBecameForeground$ICustomTabsCallback;

    aput-object v8, v7, v1

    sget-object v1, Lo/onBecameForeground$ICustomTabsCallback;->onMessageChannelReady:Lo/onBecameForeground$ICustomTabsCallback;

    aput-object v1, v7, v2

    sget-object v1, Lo/onBecameForeground$ICustomTabsCallback;->extraCallback:Lo/onBecameForeground$ICustomTabsCallback;

    aput-object v1, v7, v3

    sget-object v1, Lo/onBecameForeground$ICustomTabsCallback;->onPostMessage:Lo/onBecameForeground$ICustomTabsCallback;

    aput-object v1, v7, v4

    sget-object v1, Lo/onBecameForeground$ICustomTabsCallback;->onNavigationEvent:Lo/onBecameForeground$ICustomTabsCallback;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/onBecameForeground$ICustomTabsCallback;->asBinder:[Lo/onBecameForeground$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lo/onBecameForeground$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onBecameForeground$ICustomTabsCallback;
    .locals 1

    .line 35
    const-class v0, Lo/onBecameForeground$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onBecameForeground$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/onBecameForeground$ICustomTabsCallback;
    .locals 1

    .line 35
    sget-object v0, Lo/onBecameForeground$ICustomTabsCallback;->asBinder:[Lo/onBecameForeground$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/onBecameForeground$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onBecameForeground$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/onBecameForeground$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method
