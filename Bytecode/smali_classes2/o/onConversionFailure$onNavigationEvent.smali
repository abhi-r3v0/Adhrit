.class public final Lo/onConversionFailure$onNavigationEvent;
.super Lo/setBrandDomain$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onConversionFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private extraCallback:Lo/setBrandDomain$onPostMessage;

.field private onNavigationEvent:Lo/saveProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setBrandDomain$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/saveProperties;)Lo/setBrandDomain$onNavigationEvent;
    .locals 0

    .line 2
    iput-object p1, p0, Lo/onConversionFailure$onNavigationEvent;->onNavigationEvent:Lo/saveProperties;

    return-object p0
.end method

.method public final onNavigationEvent()Lo/setBrandDomain;
    .locals 3

    .line 3
    new-instance v0, Lo/onConversionFailure;

    iget-object v1, p0, Lo/onConversionFailure$onNavigationEvent;->extraCallback:Lo/setBrandDomain$onPostMessage;

    iget-object v2, p0, Lo/onConversionFailure$onNavigationEvent;->onNavigationEvent:Lo/saveProperties;

    invoke-direct {v0, v1, v2}, Lo/onConversionFailure;-><init>(Lo/setBrandDomain$onPostMessage;Lo/saveProperties;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/setBrandDomain$onPostMessage;)Lo/setBrandDomain$onNavigationEvent;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionFailure$onNavigationEvent;->extraCallback:Lo/setBrandDomain$onPostMessage;

    return-object p0
.end method
