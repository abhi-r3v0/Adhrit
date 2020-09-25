.class public Lo/dispatchMediaButtonEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setAutoSizeTextTypeWithDefaults;


# instance fields
.field private onMessageChannelReady:Lo/setAutoSizeTextTypeWithDefaults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setAutoSizeTextTypeWithDefaults;)V
    .locals 0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-object p1, p0, Lo/dispatchMediaButtonEvent;->onMessageChannelReady:Lo/setAutoSizeTextTypeWithDefaults;

    return-void
.end method


# virtual methods
.method public onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 1

    .line 1015
    iget-object v0, p0, Lo/dispatchMediaButtonEvent;->onMessageChannelReady:Lo/setAutoSizeTextTypeWithDefaults;

    invoke-interface {v0, p1}, Lo/setAutoSizeTextTypeWithDefaults;->onNavigationEvent(Lo/ActivityChooserView;)Z

    move-result p1

    return p1
.end method
