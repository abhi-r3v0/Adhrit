.class Lo/getParameters$4;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getParameters;-><init>([Lo/setReferrerCustomerId;[Lo/setCampaign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getParameters;


# direct methods
.method constructor <init>(Lo/getParameters;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/getParameters$4;->onNavigationEvent:Lo/getParameters;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/getParameters$4;->onNavigationEvent:Lo/getParameters;

    invoke-static {v0}, Lo/getParameters;->extraCallback(Lo/getParameters;)V

    return-void
.end method
