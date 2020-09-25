.class public final Lo/Cta$Deeplink;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Info;

.field private final onNavigationEvent:Lo/CardFooter;


# direct methods
.method public constructor <init>(Lo/Info;Lo/BadgeJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Cta$Deeplink;->ICustomTabsCallback:Lo/Info;

    new-instance p1, Lo/CardFooter;

    invoke-direct {p1, p2}, Lo/CardFooter;-><init>(Lo/BadgeJsonAdapter;)V

    iput-object p1, p0, Lo/Cta$Deeplink;->onNavigationEvent:Lo/CardFooter;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/CardFooter;
    .locals 1

    iget-object v0, p0, Lo/Cta$Deeplink;->onNavigationEvent:Lo/CardFooter;

    return-object v0
.end method

.method public final onPostMessage()Lo/Info;
    .locals 1

    iget-object v0, p0, Lo/Cta$Deeplink;->ICustomTabsCallback:Lo/Info;

    return-object v0
.end method
