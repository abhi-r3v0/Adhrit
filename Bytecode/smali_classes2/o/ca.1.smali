.class final Lo/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic extraCallback:Lo/bA;


# direct methods
.method constructor <init>(Lo/bA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ca;->extraCallback:Lo/bA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Lo/cb;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 3
    new-instance v0, Lo/bW;

    invoke-direct {v0, p0, p1, p2}, Lo/bW;-><init>(Lo/ca;Lo/cb;Ljava/lang/CharSequence;)V

    return-object v0
.end method
