.class public final enum Lo/setEmptyVisibility;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/setContentId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setEmptyVisibility;",
        ">;",
        "Lo/setContentId;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/setEmptyVisibility;

.field private static final synthetic asInterface:[Lo/setEmptyVisibility;

.field private static enum extraCallback:Lo/setEmptyVisibility;

.field private static enum onMessageChannelReady:Lo/setEmptyVisibility;

.field private static enum onNavigationEvent:Lo/setEmptyVisibility;

.field private static enum onPostMessage:Lo/setEmptyVisibility;


# instance fields
.field private final ICustomTabsCallback$Stub:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lo/setEmptyVisibility;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "INTERNATIONNAL"

    invoke-direct {v0, v3, v1, v2}, Lo/setEmptyVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setEmptyVisibility;->extraCallback:Lo/setEmptyVisibility;

    .line 9
    new-instance v0, Lo/setEmptyVisibility;

    const/4 v3, 0x2

    const-string v4, "INTERNATIONNAL_ICC"

    invoke-direct {v0, v4, v2, v3}, Lo/setEmptyVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setEmptyVisibility;->onPostMessage:Lo/setEmptyVisibility;

    .line 10
    new-instance v0, Lo/setEmptyVisibility;

    const/4 v4, 0x5

    const-string v5, "NATIONAL"

    invoke-direct {v0, v5, v3, v4}, Lo/setEmptyVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setEmptyVisibility;->onNavigationEvent:Lo/setEmptyVisibility;

    .line 11
    new-instance v0, Lo/setEmptyVisibility;

    const/4 v5, 0x3

    const-string v6, "NATIONAL_ICC"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v5, v7}, Lo/setEmptyVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setEmptyVisibility;->ICustomTabsCallback:Lo/setEmptyVisibility;

    .line 12
    new-instance v0, Lo/setEmptyVisibility;

    const/4 v6, 0x4

    const-string v7, "PRIVATE"

    const/4 v8, 0x7

    invoke-direct {v0, v7, v6, v8}, Lo/setEmptyVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setEmptyVisibility;->onMessageChannelReady:Lo/setEmptyVisibility;

    new-array v4, v4, [Lo/setEmptyVisibility;

    .line 6
    sget-object v7, Lo/setEmptyVisibility;->extraCallback:Lo/setEmptyVisibility;

    aput-object v7, v4, v1

    sget-object v1, Lo/setEmptyVisibility;->onPostMessage:Lo/setEmptyVisibility;

    aput-object v1, v4, v2

    sget-object v1, Lo/setEmptyVisibility;->onNavigationEvent:Lo/setEmptyVisibility;

    aput-object v1, v4, v3

    sget-object v1, Lo/setEmptyVisibility;->ICustomTabsCallback:Lo/setEmptyVisibility;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    sput-object v4, Lo/setEmptyVisibility;->asInterface:[Lo/setEmptyVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lo/setEmptyVisibility;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setEmptyVisibility;
    .locals 1

    .line 6
    const-class v0, Lo/setEmptyVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setEmptyVisibility;

    return-object p0
.end method

.method public static values()[Lo/setEmptyVisibility;
    .locals 1

    .line 6
    sget-object v0, Lo/setEmptyVisibility;->asInterface:[Lo/setEmptyVisibility;

    invoke-virtual {v0}, [Lo/setEmptyVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setEmptyVisibility;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 51
    iget v0, p0, Lo/setEmptyVisibility;->ICustomTabsCallback$Stub:I

    return v0
.end method
