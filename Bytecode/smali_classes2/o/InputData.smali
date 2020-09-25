.class final Lo/InputData;
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
.field private final synthetic extraCallback:Lo/Fields;


# direct methods
.method constructor <init>(Lo/Fields;)V
    .locals 0

    iput-object p1, p0, Lo/InputData;->extraCallback:Lo/Fields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    iget-object v0, p0, Lo/InputData;->extraCallback:Lo/Fields;

    invoke-virtual {v0, p1}, Lo/Fields;->ICustomTabsCallback(Lo/PlutusOrderJsonAdapter;)V

    return-void
.end method
