.class final Lo/LeaderBoard;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lo/Fields;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lo/LeaderBoard;->extraCallback:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    iget-object v0, p0, Lo/LeaderBoard;->extraCallback:Lorg/json/JSONObject;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {p1, v1, v0}, Lo/PlutusOrderJsonAdapter;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
