.class public final Lo/drawVerticalDivider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/drawDividersHorizontal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/drawDividersHorizontal<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/drawVerticalDivider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/drawVerticalDivider<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/drawVerticalDivider;

    invoke-direct {v0}, Lo/drawVerticalDivider;-><init>()V

    sput-object v0, Lo/drawVerticalDivider;->onMessageChannelReady:Lo/drawVerticalDivider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lo/drawDividersHorizontal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/drawDividersHorizontal<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lo/drawVerticalDivider;->onMessageChannelReady:Lo/drawVerticalDivider;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
