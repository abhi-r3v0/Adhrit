.class public final Lo/setLineHeight$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/setOrientation;

.field public final synthetic onNavigationEvent:Lo/setLineHeight;

.field public final onPostMessage:Lo/setPrecomputedText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPrecomputedText<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/setLineHeight;Lo/setOrientation;Lo/setPrecomputedText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setOrientation;",
            "Lo/setPrecomputedText<",
            "*>;)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lo/setLineHeight$onNavigationEvent;->onNavigationEvent:Lo/setLineHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lo/setLineHeight$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;

    .line 424
    iput-object p3, p0, Lo/setLineHeight$onNavigationEvent;->onPostMessage:Lo/setPrecomputedText;

    return-void
.end method
