.class public final Lo/fixDrawable$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fixDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Lo/setCollapsible;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/setDefaultNavigationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDefaultNavigationIcon<",
            "Lo/setCollapsible;",
            "Lo/setCollapsible;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lo/setDefaultNavigationIcon;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lo/setDefaultNavigationIcon;-><init>(J)V

    iput-object v0, p0, Lo/fixDrawable$onNavigationEvent;->onMessageChannelReady:Lo/setDefaultNavigationIcon;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Lo/setCollapsible;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance p1, Lo/fixDrawable;

    iget-object v0, p0, Lo/fixDrawable$onNavigationEvent;->onMessageChannelReady:Lo/setDefaultNavigationIcon;

    invoke-direct {p1, v0}, Lo/fixDrawable;-><init>(Lo/setDefaultNavigationIcon;)V

    return-object p1
.end method
