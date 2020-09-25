.class public final Lo/WidgetJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getAccessToken;


# static fields
.field public static final onPostMessage:Lo/WidgetJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/WidgetJsonAdapter;

    invoke-direct {v0}, Lo/WidgetJsonAdapter;-><init>()V

    sput-object v0, Lo/WidgetJsonAdapter;->onPostMessage:Lo/WidgetJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lo/ViewContainer;->onNavigationEvent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
