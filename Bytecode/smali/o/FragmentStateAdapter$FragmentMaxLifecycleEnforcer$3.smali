.class public final enum Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

.field public static final enum extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

.field public static final enum onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

.field public static final enum onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    const/4 v1, 0x0

    const-string v2, "YES"

    invoke-direct {v0, v2, v1}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 16
    new-instance v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    const/4 v2, 0x1

    const-string v3, "NO"

    invoke-direct {v0, v3, v2}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 17
    new-instance v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    const/4 v3, 0x2

    const-string v4, "UNSET"

    invoke-direct {v0, v4, v3}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 14
    sget-object v5, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    aput-object v5, v4, v1

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->ICustomTabsCallback:[Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static onPostMessage(Z)Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
    .locals 0
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation

    if-eqz p0, :cond_0

    .line 41
    sget-object p0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-object p0

    :cond_0
    sget-object p0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
    .locals 1

    .line 14
    const-class v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-object p0
.end method

.method public static values()[Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
    .locals 1

    .line 14
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->ICustomTabsCallback:[Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-virtual {v0}, [Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    return-object v0
.end method
