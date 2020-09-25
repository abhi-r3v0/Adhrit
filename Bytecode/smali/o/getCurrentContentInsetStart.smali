.class public final Lo/getCurrentContentInsetStart;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCurrentContentInsetStart$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/PaymentEventUtils;",
        "",
        "()V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getCurrentContentInsetStart$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getCurrentContentInsetStart$extraCallback;-><init>(B)V

    sput-object v0, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
