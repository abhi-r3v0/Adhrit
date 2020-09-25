.class public final Lo/CounterConfigJsonAdapter;
.super Lo/TemplatePropertiesMachine;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getCardLimits;


# direct methods
.method public constructor <init>(Lo/getCardLimits;)V
    .locals 0

    invoke-direct {p0}, Lo/TemplatePropertiesMachine;-><init>()V

    iput-object p1, p0, Lo/CounterConfigJsonAdapter;->onNavigationEvent:Lo/getCardLimits;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CounterConfigJsonAdapter;->onNavigationEvent:Lo/getCardLimits;

    invoke-interface {v0, p1, p2}, Lo/getCardLimits;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
