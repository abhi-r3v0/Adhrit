.class final Lo/FieldsJsonAdapter;
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
.field private final synthetic onNavigationEvent:Lo/Fields;


# direct methods
.method constructor <init>(Lo/Fields;)V
    .locals 0

    iput-object p1, p0, Lo/FieldsJsonAdapter;->onNavigationEvent:Lo/Fields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    iget-object v0, p0, Lo/FieldsJsonAdapter;->onNavigationEvent:Lo/Fields;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Fields;->onMessageChannelReady(Lo/Fields;Z)Z

    iget-object v0, p0, Lo/FieldsJsonAdapter;->onNavigationEvent:Lo/Fields;

    invoke-virtual {v0, p1}, Lo/Fields;->onNavigationEvent(Lo/PlutusOrderJsonAdapter;)V

    return-void
.end method
