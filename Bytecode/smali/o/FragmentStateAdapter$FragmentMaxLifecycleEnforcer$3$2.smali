.class public final synthetic Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic extraCallback:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    invoke-static {}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->values()[Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3$2;->extraCallback:[I

    :try_start_0
    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3$2;->extraCallback:[I

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onMessageChannelReady:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3$2;->extraCallback:[I

    sget-object v1, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->extraCallback:Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
